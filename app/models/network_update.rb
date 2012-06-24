class NetworkUpdate
  include Mongoid::Document

  field :content
  referenced_in :user

  attr_accessible :content, :user, :receivers
end
