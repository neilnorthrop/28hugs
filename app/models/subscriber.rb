class Subscriber < ActiveRecord::Base
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
