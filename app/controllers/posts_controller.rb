class PostsController < ApplicationController
  def index
    @matches = Match.all
  end
end
