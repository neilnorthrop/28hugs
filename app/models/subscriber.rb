class Subscriber < ActiveRecord::Base
<<<<<<< HEAD
  has_secure_password
=======
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
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
end
