class Api::V1::CommentsController < ApplicationController

  respond_to :json

  def index
    @comments = Comment.all.to_ary
    render :json => @comments.to_json
  end

  def new
  end

  def create
    comment = Comment.create :content => params[:content], :inReplyTo => "test"
    current_user = User.first
    current_user.publish_activity(:comment, {actor: current_user, object: comment, receivers: current_user.followers})
    respond_with(comment, :status => :ok, :location => "/api/v1/comments")
  end

  def update
    comment = Comment.find params[:id]
    respond_with(comment.update_attributes(params[:comment]), :status => :ok, :location => "/api/v1/comments")
  end
end
