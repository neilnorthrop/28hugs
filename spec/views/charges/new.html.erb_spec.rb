require 'spec_helper'

describe "charges/new" do
  before(:each) do
    assign(:charge, stub_model(Charge,
      :paid_status => "MyString",
      :stripe_token => "MyString",
      :last_4 => "MyString",
      :subscriber_id => 1
    ).as_new_record)
  end

  it "renders new charge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", charges_path, "post" do
      assert_select "input#charge_paid_status[name=?]", "charge[paid_status]"
      assert_select "input#charge_stripe_token[name=?]", "charge[stripe_token]"
      assert_select "input#charge_last_4[name=?]", "charge[last_4]"
      assert_select "input#charge_subscriber_id[name=?]", "charge[subscriber_id]"
    end
  end
end
