require 'spec_helper'

describe SessionsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'javascript'" do
    it "returns http success" do
      get 'javascript'
      response.should be_success
    end
  end

end
