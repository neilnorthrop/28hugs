class SubscribersController < ApplicationController
  before_action :set_subscriber, only: [:show, :edit, :update, :destroy]

  # GET /subscribers
  # GET /subscribers.json
  def index
    @subscribers = Subscriber.all
  end

  # GET /subscribers/1
  # GET /subscribers/1.json
  def show
    @subscriber
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
  end

  # POST /subscribers
  # POST /subscribers.json
  def create
    @subscriber = Subscriber.new(subscriber_params)

    respond_to do |format|
      if @subscriber.save
        format.html { redirect_to @subscriber, notice: 'Subscriber was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subscriber }
      else
        format.html { render action: 'new' }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end

        # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://manage.stripe.com/account
    Stripe.api_key = "sk_k4XKAXwn5PpyQmLM3ChOKR4ncHfCh"

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
    # @subscriber = subscriber
      if @subscriber.save
        redirect_to @subscriber, notice: 'Subscriber was successfully created.'
      else
        render 'new'
      end
    # @subscriber = Subscriber.new(subscriber_params)

    # respond_to do |format|
    #   if @subscriber.save
    #     format.html { redirect_to @subscriber, notice: 'Subscriber was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @subscriber }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @subscriber.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /subscribers/1
  # PATCH/PUT /subscribers/1.json
  def update
    respond_to do |format|
      if @subscriber.update(subscriber_params)
        format.html { redirect_to @subscriber, notice: 'Subscriber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribers/1
  # DELETE /subscribers/1.json
  def destroy
    @subscriber.destroy
    respond_to do |format|
      format.html { redirect_to subscribers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriber_params
      params.require(:subscriber).permit(:email, :first_name, :last_name, :phone_number, :billing_address, :billing_city, :billing_state, :billing_zip, :processor_token, :recipient_name, :recipient_address, :recipient_city, :recipient_state, :recipient_zip, :password, :password_digest, :password_confirmation)
      params.require(:subscriber).permit(:password, :password_confirmation, :email, :first_name, :last_name, :phone, :billing_address, :billing_city, :billing_state, :billing_zip, :ship_date, :password_digest, :stripe_customer_id, :payment_status, :recipient_name, :recipient_address, :recipient_city, :recipient_state, :recipient_zip)
    end
end
