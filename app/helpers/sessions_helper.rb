module SessionsHelper

  def sign_in(subscriber)
    remember_token = Subscriber.new_remember_token
    cookies[:remember_token] = { value: remember_token,
                                 expires: 1.day.from_now.utc }
    subscriber.update_attribute(:remember_token, Subscriber.encrypt(remember_token))
    self.current_subscriber = subscriber
  end

  def signed_in?
    !current_subscriber.nil?
  end

  def current_subscriber=(subscriber)
    @current_subscriber = subscriber
  end

  def current_subscriber
    remember_token = Subscriber.encrypt(cookies[:remember_token])
    @current_subscriber ||= Subscriber.find_by(remember_token: remember_token)
  end

end
