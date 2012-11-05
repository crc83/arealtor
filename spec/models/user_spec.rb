require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  describe "when user name is too long" do
    before {@user.name = "a"*51 }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[some@email,com some_at_email_dot_com some@email]
      addresses.each do |invalid_email|
        @user.email = invalid_email
        @user.should_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[some@email.com a@a.a so+me@emai.l]
      addresses.each do |valid_email|
        @user.email = valid_email
        @user.should be_valid
      end
    end
  end
end
