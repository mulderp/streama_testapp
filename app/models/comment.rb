class Comment
  include Mongoid::Document
  field :description, :type => String
end
