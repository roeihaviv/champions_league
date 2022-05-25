class ClubsController < ApplicationController
  def index
    matching_clubs = Club.all

    @list_of_clubs = matching_clubs.order({ :created_at => :desc })

    render({ :template => "clubs/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_clubs = Club.where({ :id => the_id })

    @the_club = matching_clubs.at(0)

    render({ :template => "clubs/show.html.erb" })
  end
end
