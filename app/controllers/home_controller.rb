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
    @match = Match.new(Ateam: params[:Ateam] ,Acolor: params[:Acolor], Bteam: params[:Bteam],Bcolor: params[:Bcolor] )
    @match.save
    redirect_to("/home/#{@match.id}")
    #redirect_to("/main")
  end
end
