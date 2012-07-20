class Api::V1::CommentsController < ApplicationController

  respond_to :json

  def index
    render :json => "[test: 1]"
  end

  def new
  end

  def create
    comment = Comment.create :content => params[:content]
    respond_with(comment, :status => :ok, :location => "/api/v1/comments")
  end

  def update
    comment = Comment.find params[:id]
    respond_with(comment.update_attributes(params[:comment]), :status => :ok, :location => "/api/v1/comments")
  end
end
