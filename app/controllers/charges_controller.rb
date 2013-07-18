class ChargesController < ApplicationController
  before_action :set_charge, only: [:show, :edit, :update, :destroy]

  # GET /charges
  # GET /charges.json
  def index
    @charges = Charge.all
  end

  # GET /charges/1
  # GET /charges/1.json
  def show
  end

  # GET /charges/new
  def new
    @charge = Charge.new
  end

  # GET /charges/1/edit
  def edit
  end

  # POST /charges
  # POST /charges.json
  def create

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://manage.stripe.com/account
    Stripe.api_key = "sk_k4XKAXwn5PpyQmLM3ChOKR4ncHfCh"

    # Get the credit card details submitted by the form
    token = params[:stripeToken]


    @subscribers = Subscriber.where(ship_date: Date.today)

    @subscribers.each do |s|

    Stripe::Charge.create(
    :amount   => 5.98,
    :currency => "usd",
    :customer => s.stripe_customer_id
    )
    end

    @charge = Charge.new(charge_params)
    if @charge.save
      redirect_to @charge, notice: 'Subscriber was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /charges/1
  # PATCH/PUT /charges/1.json
  def update
    respond_to do |format|
      if @charge.update(charge_params)
        format.html { redirect_to @charge, notice: 'Charge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charges/1
  # DELETE /charges/1.json
  def destroy
    @charge.destroy
    respond_to do |format|
      format.html { redirect_to charges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charge
      @charge = Charge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charge_params
      params.require(:charge).permit(:paid_status, :stripe_token, :last_4, :subscriber_id)
    end
end
