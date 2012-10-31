require 'spec_helper'

describe "Static pages: " do
  subject { page }

  describe "Home page" do
    before { visit root_path }
    
    it "should have the content 'Home'" do
      should have_selector('h1',:text => 'Home')
    end

    it "should have the title 'Home'" do
      should have_selector('title',:text => "ARealtor | Home")
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the content 'Help'" do
      should have_selector('h1',:text =>'Help')
    end

    it "should have the title 'Help'" do
      should have_selector('title', :text => "Help")
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have content 'About'" do
      should have_selector('h1', :text => 'About')
    end

    it "should have title 'About'" do
      should have_selector('title', :text => 'About')
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    
    it "should have h1 'Contact'" do
      should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      should have_selector('title', text: 'Contact')
    end

  end
end
