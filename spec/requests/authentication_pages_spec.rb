require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "login" do
    before do
      visit login_path
    end

    describe 'with invalid information' do
      before { click_button "Log in"}

      it { should have_content('Log in') }
      it { should have_selector('title', text: "Log in") }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end

    describe "with valid information" do
      let (:subscriber) { FactoryGirl.create(:subscriber) }
      before do
        fill_in "Email", with: subscriber.email.downcase
        fill_in "Password", with: subscriber.password
        click_button "Log in"
      end

      it { should have_selector('title', text: subscriber.name) }
      it { should have_link('edit profile', href: subscriber_edit_path(subsriber)) }
      it { should have_link('Log out',      href: logout_path) }
      it { should_not have_link('Log in',   href: login_path) }
    end
  end
end
