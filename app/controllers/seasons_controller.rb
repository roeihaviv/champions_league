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

  def this_season
    matching_seasons = Season.all

    @list_of_seasons = matching_seasons.order({ :season_year => :desc })

    render({ :template => "seasons/this_season.html.erb" })
  end

  def last_season
    matching_seasons = Season.all

    @list_of_seasons = matching_seasons.order({ :season_year => :desc })

    render({ :template => "seasons/last_season.html.erb" })
  end

  def before_two_season
    matching_seasons = Season.all

    @list_of_seasons = matching_seasons.order({ :season_year => :desc })

    render({ :template => "seasons/before_two_season.html.erb" })
  end
end
