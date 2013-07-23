require 'spec_helper'

describe "subscribers/index" do
  before(:each) do
    assign(:subscribers, [
      stub_model(Subscriber,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
<<<<<<< HEAD
        :phone_number => "Phone Number",
        :billing_address => "Billing Address",
        :billing_city => "Billing City",
        :billing_state => "Billing State",
        :billing_zip => 1,
        :processor_token => "Processor Token",
=======
        :phone => "Phone",
        :billing_address => "Billing Address",
        :billing_city => "Billing City",
        :billing_state => "Billing State",
        :billing_zip => "Billing Zip",
        :password_digest => "Password Digest",
        :stripe_customer_id => "Stripe Customer",
        :payment_status => "Payment Status",
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
        :recipient_name => "Recipient Name",
        :recipient_address => "Recipient Address",
        :recipient_city => "Recipient City",
        :recipient_state => "Recipient State",
<<<<<<< HEAD
        :recipient_zip => 2,
        :password => "Password",
        :password_digest => "Password Digest",
        :password_confirmation => "Password Confirmation"
=======
        :recipient_zip => "Recipient Zip"
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
      ),
      stub_model(Subscriber,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
<<<<<<< HEAD
        :phone_number => "Phone Number",
        :billing_address => "Billing Address",
        :billing_city => "Billing City",
        :billing_state => "Billing State",
        :billing_zip => 1,
        :processor_token => "Processor Token",
=======
        :phone => "Phone",
        :billing_address => "Billing Address",
        :billing_city => "Billing City",
        :billing_state => "Billing State",
        :billing_zip => "Billing Zip",
        :password_digest => "Password Digest",
        :stripe_customer_id => "Stripe Customer",
        :payment_status => "Payment Status",
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
        :recipient_name => "Recipient Name",
        :recipient_address => "Recipient Address",
        :recipient_city => "Recipient City",
        :recipient_state => "Recipient State",
<<<<<<< HEAD
        :recipient_zip => 2,
        :password => "Password",
        :password_digest => "Password Digest",
        :password_confirmation => "Password Confirmation"
=======
        :recipient_zip => "Recipient Zip"
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
      )
    ])
  end

  it "renders a list of subscribers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
<<<<<<< HEAD
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Address".to_s, :count => 2
    assert_select "tr>td", :text => "Billing City".to_s, :count => 2
    assert_select "tr>td", :text => "Billing State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Processor Token".to_s, :count => 2
=======
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Address".to_s, :count => 2
    assert_select "tr>td", :text => "Billing City".to_s, :count => 2
    assert_select "tr>td", :text => "Billing State".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Stripe Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Status".to_s, :count => 2
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
    assert_select "tr>td", :text => "Recipient Name".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Address".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient City".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient State".to_s, :count => 2
<<<<<<< HEAD
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Password Confirmation".to_s, :count => 2
=======
    assert_select "tr>td", :text => "Recipient Zip".to_s, :count => 2
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
  end
end
