require 'spec_helper'

describe "charges/index" do
  before(:each) do
    assign(:charges, [
      stub_model(Charge,
        :paid_status => "Paid Status",
        :stripe_token => "Stripe Token",
        :last_4 => "Last 4",
        :subscriber_id => 1
      ),
      stub_model(Charge,
        :paid_status => "Paid Status",
        :stripe_token => "Stripe Token",
        :last_4 => "Last 4",
        :subscriber_id => 1
      )
    ])
  end

  it "renders a list of charges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Paid Status".to_s, :count => 2
    assert_select "tr>td", :text => "Stripe Token".to_s, :count => 2
    assert_select "tr>td", :text => "Last 4".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
