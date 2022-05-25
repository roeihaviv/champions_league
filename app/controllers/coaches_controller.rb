class CoachesController < ApplicationController
  def index
    matching_coaches = Coach.all

    @list_of_coaches = matching_coaches.order({ :created_at => :desc })

    render({ :template => "coaches/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_coaches = Coach.where({ :id => the_id })

    @the_coach = matching_coaches.at(0)

    render({ :template => "coaches/show.html.erb" })
  end
end
