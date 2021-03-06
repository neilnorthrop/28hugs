require 'spec_helper'

describe "subscribers/show" do
  before(:each) do
    @subscriber = assign(:subscriber, stub_model(Subscriber,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
<<<<<<< HEAD
    rendered.should match(/Phone Number/)
    rendered.should match(/Billing Address/)
    rendered.should match(/Billing City/)
    rendered.should match(/Billing State/)
    rendered.should match(/1/)
    rendered.should match(/Processor Token/)
=======
    rendered.should match(/Phone/)
    rendered.should match(/Billing Address/)
    rendered.should match(/Billing City/)
    rendered.should match(/Billing State/)
    rendered.should match(/Billing Zip/)
    rendered.should match(/Payment Status/)
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
    rendered.should match(/Recipient Name/)
    rendered.should match(/Recipient Address/)
    rendered.should match(/Recipient City/)
    rendered.should match(/Recipient State/)
<<<<<<< HEAD
    rendered.should match(/2/)
    rendered.should match(/Password/)
    rendered.should match(/Password Digest/)
    rendered.should match(/Password Confirmation/)
=======
    rendered.should match(/Recipient Zip/)
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
  end
end
