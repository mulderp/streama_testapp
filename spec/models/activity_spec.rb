require 'spec_helper'

describe Activity do

  let(:user)  {  User.create!(first_name: "test", email: "p@p.de", password: "tttt1234", password_confirmation: "tttt1234") }

  describe 'NetworkUpdate activity' do

    it "stores actor and network update" do
      network_update = NetworkUpdate.create(content: "network")
      act = Activity.create({actor: user, verb: :post, object: network_update})
      act.load_instance(:actor).should == user
      act.verb.should == :post
      act.load_instance(:object).should == network_update
    end

    it "can be published with actor and network update" do
      network_update = NetworkUpdate.create(content: "network")
      act = user.publish_activity(:post, {actor: user, object: network_update, receivers: user.followers})
      act.load_instance(:actor).should == user
      act.verb.should == :post
      act.load_instance(:object).should == network_update
    end

    it "can be published for following activity" do
      user_2 = User.create!(first_name: "test2", email: "p2@p.de", password: "tttt123", password_confirmation: "tttt123")
      act = user.publish_activity(:follow, {actor: user, object: user_2, receivers: user.followers})
      act.actor['first_name'].should == user.first_name
      act.verb.should == :follow
      act.load_instance(:object).should == user_2
    end

    it "can be commented" do
      act = user.publish_activity(:comment, {actor: user, object: comment, receivers: user.all})

    end

    it "includes comments"
  end

end
