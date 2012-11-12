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

  it "should return empty message if it receives invalid JSON message" do   
    wrong_json_file = mock('file')
    wrong_json_file.should_receive(:read).and_return('wrong JSON') 

    should_receive(:open).and_return(wrong_json_file)
    
    icndb_joke.should be_empty
  end

  '{ "type": "success", "value": { "id": 339, "joke": "text of joke", "categories": ["explicit", "chuck norris"] } }'
end