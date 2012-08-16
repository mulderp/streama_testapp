class Comment
  include Mongoid::Document
  field :content, :type => String

  field :inReplyTo, :type => String


end
