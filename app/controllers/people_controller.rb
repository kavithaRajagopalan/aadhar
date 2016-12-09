class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(sanitise_params)
    if @person.save
      redirect_to @person
    else
      render 'new'
    end
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
