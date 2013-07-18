class Charge < ActiveRecord::Base
	belongs_to :subscriber

	def self.charge_machine

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://manage.stripe.com/account
    Stripe.api_key = "sk_k4XKAXwn5PpyQmLM3ChOKR4ncHfCh"

    @subscribers = Subscriber.where(ship_date: Date.today)

    @subscribers.each do |s|

      current_charge = Stripe::Charge.create(
      :amount   => 598,
      :currency => "usd",
      :customer => s.stripe_customer_id
      )

      s.payment_status = current_charge.paid
      last_4 = current_charge.card.last4
      charge_token = current_charge.id
      s.save
        #add values to charge-params from @subscriber & stripe return
      @charge = Charge.new(paid_status: current_charge.paid, last_4: last_4, stripe_token: charge_token, subscriber_id: s.id)
        if @charge.save
         	#s.payment_status = "good"
        else
          puts "HUUUUUGGGGEEEEE PPRRRRROOOOBBBBLLLLEEMMM"
        end
    end
	end
end
