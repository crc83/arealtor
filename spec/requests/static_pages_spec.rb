require 'spec_helper'

describe "Static pages: " do
  describe "Home page" do
    it "should have the content 'Home'" do
      visit root_path
      page.should have_selector('h1',:text => 'Home')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',:text => "ARealtor | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1',:text =>'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', :text => "Help")
    end
  end

  describe "About page" do
    it "should have content 'About'" do
      visit about_path
      page.should have_selector('h1', :text => 'About')
    end

    it "should have title 'About'" do
      visit about_path
      page.should have_selector('title', :text => 'About')
    end
  end

  describe "Contact page" do
    
    it "should have h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: 'Contact')
    end

  end
end
