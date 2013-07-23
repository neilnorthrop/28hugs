class Subscriber < ActiveRecord::Base
  has_secure_password
  before_save { self.email = email.downcase }
  has_many :charges
  before_create :create_remember_token

  validates :first_name && :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }


  def Subscriber.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Subscriber.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Subscriber.encrypt(Subscriber.new_remember_token)
    end
	has_secure_password
	has_many :charges


	def self.stripe_customer_creator

	    # Set your secret key: remember to change this to your live secret key in production
	    # See your keys here https://manage.stripe.com/account

    	# Get the credit card details submitted by the form
    token = params[:stripeToken]


   	 # Create a Customer
    customer = Stripe::Customer.create(
      :card => token,
      :description => "payinguser@example.com"
    )
   	 #set params to include the returned customer id from stripe
    params[:subscriber][:stripe_customer_id] = customer.id

    @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
        redirect_to @subscriber, notice: 'Subscriber was successfully created.'
      else
        render action: 'new'
      end
  end
end
