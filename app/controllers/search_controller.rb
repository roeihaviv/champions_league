class SearchController < ApplicationController

  def search
    @clubs = Club.where("club_name LIKE ?", "%" + params[:q] + "%")
  end
end
