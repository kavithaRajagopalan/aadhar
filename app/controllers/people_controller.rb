class PeopleController < ApplicationController

  def create
    @person = Person.new(sanitise_params)

    @person.save

    redirect_to @person
  end

  def show
    @person = Person.find(params[:id])
  end

  def index
    @people = Person.all
  end
  

  private
  def sanitise_params
    params.require(:person).permit(:name, :address, :dob)
  end
end
