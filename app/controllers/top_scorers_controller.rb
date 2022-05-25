class TopScorersController < ApplicationController
  def index
    matching_top_scorers = TopScorer.all

    @list_of_top_scorers = matching_top_scorers.order({ :season_id => :asc })

    render({ :template => "top_scorers/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_top_scorers = TopScorer.where({ :id => the_id })

    @the_top_scorer = matching_top_scorers.at(0)

    render({ :template => "top_scorers/show.html.erb" })
  end
end
