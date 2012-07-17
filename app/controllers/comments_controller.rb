class CommentsController < ApplicationController

  respond_to :json

  def index
    render :json => "[test: 1]"
  end

  def new
  end

  def create
  end
end
