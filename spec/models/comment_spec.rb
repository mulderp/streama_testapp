require 'spec_helper'

describe Comment do

  it "includes repliedTo" do
    act = user.publish_activity(:comment, {actor: user, object: comment, receivers: user.all})
  end

end
