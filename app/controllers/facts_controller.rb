class FactsController < ApplicationController
  def index
      @person = Person.find(params[:person_id])
  end

  def create
      @person = Person.find(params[:person_id])
      @fact = @person.facts.create(fact_params)
      redirect_to person_path(@person)
  end

  def destroy
      @person = Person.find(params[:person_id])
      @fact = @person.facts.find(params[:id])
      @fact.destroy
      redirect_to person_path(@person)
    end

  private
    def fact_params
      params.require(:fact).permit(:text)
   end
end