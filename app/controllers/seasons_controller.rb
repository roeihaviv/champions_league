class SeasonsController < ApplicationController
  
  def homepage
    matching_seasons = Season.all

    @list_of_seasons = matching_seasons.order({ :created_at => :desc })

    render({ :template => "seasons/homepage.html.erb" })
  end

  def index
    matching_seasons = Season.all

    @list_of_seasons = matching_seasons.order({ :created_at => :desc })

    render({ :template => "seasons/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_seasons = Season.where({ :id => the_id })

    @the_season = matching_seasons.at(0)

    render({ :template => "seasons/show.html.erb" })
  end

  def create
    the_season = Season.new
    the_season.season_year = params.fetch("query_season_year")
    the_season.stadium_id = params.fetch("query_stadium_id")
    the_season.top_scorer_id = params.fetch("query_top_scorer_id")
    the_season.winner_id = params.fetch("query_winner_id")

    if the_season.valid?
      the_season.save
      redirect_to("/seasons", { :notice => "Season created successfully." })
    else
      redirect_to("/seasons", { :alert => the_season.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_season = Season.where({ :id => the_id }).at(0)

    the_season.season_year = params.fetch("query_season_year")
    the_season.stadium_id = params.fetch("query_stadium_id")
    the_season.top_scorer_id = params.fetch("query_top_scorer_id")
    the_season.winner_id = params.fetch("query_winner_id")

    if the_season.valid?
      the_season.save
      redirect_to("/seasons/#{the_season.id}", { :notice => "Season updated successfully."} )
    else
      redirect_to("/seasons/#{the_season.id}", { :alert => the_season.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_season = Season.where({ :id => the_id }).at(0)

    the_season.destroy

    redirect_to("/seasons", { :notice => "Season deleted successfully."} )
  end
end
