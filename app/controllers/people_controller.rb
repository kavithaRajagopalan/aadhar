class PeopleController < ApplicationController

  def new

  end
  
  def create
    @person = Person.new(sanitise_params)

    @person.save

  end

  private
  def sanitise_params
    params.require(:person).permit(:name, :address, :dob)
  end
end
