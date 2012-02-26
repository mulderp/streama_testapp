require 'spec_helper'

describe NetworkUpdatesController do
  let(:user) do
    user = Factory(:user)
    user
  end

  describe "POST create" do

    it "posts messages to Activity" do
      sign_in(:user, user)
      
      user.followers.to_a.should == [ user ]
      post :create, { :network_update =>{:content =>"test"}}

      # NetworkUpdate.all.to_a.should == "" 

      Activity.all.to_a.should == [ Activity.first ]
    end

    
  end

end
