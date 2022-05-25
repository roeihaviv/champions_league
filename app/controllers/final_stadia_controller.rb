class FinalStadiaController < ApplicationController
  def index
    matching_final_stadia = FinalStadium.all

    @list_of_final_stadia = matching_final_stadia.order({ :created_at => :desc })

    render({ :template => "final_stadia/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_final_stadia = FinalStadium.where({ :id => the_id })

    @the_final_stadium = matching_final_stadia.at(0)

    render({ :template => "final_stadia/show.html.erb" })
  end
end
