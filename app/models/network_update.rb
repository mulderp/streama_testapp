class NetworkUpdate
  include Mongoid::Document

  field :content
  has_one :activity

end
