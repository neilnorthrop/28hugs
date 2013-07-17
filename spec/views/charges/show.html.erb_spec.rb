require 'spec_helper'

describe "charges/show" do
  before(:each) do
    @charge = assign(:charge, stub_model(Charge,
      :paid_status => "Paid Status",
      :stripe_token => "Stripe Token",
      :last_4 => "Last 4",
      :subscriber_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Paid Status/)
    rendered.should match(/Stripe Token/)
    rendered.should match(/Last 4/)
    rendered.should match(/1/)
  end
end
