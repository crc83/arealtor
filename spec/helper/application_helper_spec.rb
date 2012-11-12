require 'spec_helper'
require 'rspec'
require 'socket'
require 'uri'
require File.dirname(__FILE__)+'/../../app/helpers/application_helper.rb'

describe "ICNDB database" do
  include ApplicationHelper

  it "should return empty message if it can't connect to database" do
    should_receive(:open).and_raise(SocketError)
    icndb_joke.should be_empty
  end
end