class Activity
  include Streama::Activity
  
  activity :new_photo do
    actor :user, :cache => [:first_name]
    object :photo, :cache => [:file]
    target_object :album, :cache => [:title]
  end
  
  activity :new_photo_without_cache do
    actor :user
    object :photo
    target_object :album
  end
  
  activity :comment do
    actor :user, :cache => [:first_name]
    object :comment, :cache => [:content, :inReplyTo]
  end

  activity :post do
    actor :user, :cache => [:first_name]
    object :network_update, :cache => [:content] # note according to: http://activitystrea.ms/head/activity-schema.html#note
    # target_object :newsfeed
  end

  activity :follow do
    actor :user, :cache => [:first_name]
    object :user, :cache => [:first_name]
    # target_object :newsfeed
  end

  has_many :comments

end

