require 'spec_helper'

describe Subscriber do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======

  before do
    @subscriber = Subscriber.new(first_name: "Example", last_name: "User", email: "example@example.com",
                                 password: "foobar", password_confirmation: "foobar", phone: "555-555-5555")
  end

  subject { @subscriber }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:phone) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  describe "remember token" do
    before { @subscriber.save }
    its(:remember_token) { should_not be_blank }
  end
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
end
