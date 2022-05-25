class SeasonsController < ApplicationController
  def index
    matching_seasons = Season.all

    @list_of_seasons = matching_seasons.order({ :season_year => :desc })

    render({ :template => "seasons/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_seasons = Season.where({ :id => the_id })

    @the_season = matching_seasons.at(0)

    render({ :template => "seasons/show.html.erb" })
  end
end
