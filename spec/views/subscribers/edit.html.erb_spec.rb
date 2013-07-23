require 'spec_helper'

describe "subscribers/edit" do
  before(:each) do
    @subscriber = assign(:subscriber, stub_model(Subscriber,
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
<<<<<<< HEAD
      :phone_number => "MyString",
      :billing_address => "MyString",
      :billing_city => "MyString",
      :billing_state => "MyString",
      :billing_zip => 1,
      :processor_token => "MyString",
=======
      :phone => "MyString",
      :billing_address => "MyString",
      :billing_city => "MyString",
      :billing_state => "MyString",
      :billing_zip => "MyString",
      :password_digest => "MyString",
      :stripe_customer_id => "MyString",
      :payment_status => "MyString",
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
      :recipient_name => "MyString",
      :recipient_address => "MyString",
      :recipient_city => "MyString",
      :recipient_state => "MyString",
<<<<<<< HEAD
      :recipient_zip => 1,
      :password => "MyString",
      :password_digest => "MyString",
      :password_confirmation => "MyString"
=======
      :recipient_zip => "MyString"
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
    ))
  end

  it "renders the edit subscriber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscriber_path(@subscriber), "post" do
      assert_select "input#subscriber_email[name=?]", "subscriber[email]"
      assert_select "input#subscriber_first_name[name=?]", "subscriber[first_name]"
      assert_select "input#subscriber_last_name[name=?]", "subscriber[last_name]"
<<<<<<< HEAD
      assert_select "input#subscriber_phone_number[name=?]", "subscriber[phone_number]"
=======
      assert_select "input#subscriber_phone[name=?]", "subscriber[phone]"
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
      assert_select "input#subscriber_billing_address[name=?]", "subscriber[billing_address]"
      assert_select "input#subscriber_billing_city[name=?]", "subscriber[billing_city]"
      assert_select "input#subscriber_billing_state[name=?]", "subscriber[billing_state]"
      assert_select "input#subscriber_billing_zip[name=?]", "subscriber[billing_zip]"
<<<<<<< HEAD
      assert_select "input#subscriber_processor_token[name=?]", "subscriber[processor_token]"
=======
      assert_select "input#subscriber_password_digest[name=?]", "subscriber[password_digest]"
      assert_select "input#subscriber_stripe_customer_id[name=?]", "subscriber[stripe_customer_id]"
      assert_select "input#subscriber_payment_status[name=?]", "subscriber[payment_status]"
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
      assert_select "input#subscriber_recipient_name[name=?]", "subscriber[recipient_name]"
      assert_select "input#subscriber_recipient_address[name=?]", "subscriber[recipient_address]"
      assert_select "input#subscriber_recipient_city[name=?]", "subscriber[recipient_city]"
      assert_select "input#subscriber_recipient_state[name=?]", "subscriber[recipient_state]"
      assert_select "input#subscriber_recipient_zip[name=?]", "subscriber[recipient_zip]"
<<<<<<< HEAD
      assert_select "input#subscriber_password[name=?]", "subscriber[password]"
      assert_select "input#subscriber_password_digest[name=?]", "subscriber[password_digest]"
      assert_select "input#subscriber_password_confirmation[name=?]", "subscriber[password_confirmation]"
=======
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
    end
  end
end
