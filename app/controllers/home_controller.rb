class HomeController < ApplicationController
  def top
  end
  def about
  end
  def main
    @match = Match.find_by(id: params[:id])
  end
  def show
    @match = Match.find_by(id: params[:id])
  end
  def measure
    @match = Match.find_by(id: params[:id])
  end
  def index
    @matches = Match.all
  end
  def create
    @match = Match.new(Ateam: params[:Ateam] ,Bteam: params[:Bteam])
    @match.save
    redirect_to("/home/#{@match.id}")
  end
end
