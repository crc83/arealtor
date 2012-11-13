require 'spec_helper'

describe "Authentification" do

  subject { page }

  describe "signin" do
    before { visit signin_path }

    it { should have_selector('h1', text: 'Sign in') }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end

  end

end
