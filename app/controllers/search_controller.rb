class SearchController < ApplicationController

  def search
    @search = Season.where("season_name LIKE ?", "%" + params[:q] + "%")

    if @search = 2021
        redirect_to("/last_season")
      else
      
        redirect_to("/", { :notice => "Signed in successfully." })
      end
  end
end
