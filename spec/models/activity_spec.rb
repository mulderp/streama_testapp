require 'spec_helper'

describe Activity do

  describe 'NetworkUpdate activity' do

    it "stores actor and network update" do

      user = User.create(first_name: "test", email: "p@p.de", password: "tttt", password_confirmation: "tttt")
      network_update = NetworkUpdate.create(content: "network")
      act = Activity.create({actor: user, verb: :post, object: network_update})
      act.actor.should == user
      act.verb.should == :post
      act.object.should == network_update
    end

    it "can be published with actor and network update" do

      user = User.create(first_name: "test", email: "p@p.de", password: "tttt", password_confirmation: "tttt")
      network_update = NetworkUpdate.create(content: "network")
      act = user.publish_activity(:post, {actor: user, object: network_update, receivers: user.followers})
      act.actor.should == user
      act.verb.should == :post
      act.object.should == network_update
    end

    it "can be published for following activity" do

      user = User.create(first_name: "test", email: "p@p.de", password: "tttt", password_confirmation: "tttt")
      user_2 = User.create(first_name: "test2", email: "p2@p.de", password: "tttt", password_confirmation: "tttt")
      act = user.publish_activity(:follow, {actor: user, object: user_2, receivers: user.followers})
      act.actor.should == user
      act.verb.should == :follow
      act.object.should == user_2
    end
  end
end
