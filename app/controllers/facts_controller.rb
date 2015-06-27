class FactsController < ApplicationController
  def show
      @person = Person.find(params[:person_id])
      @fact = @person.facts.find(params[:id])

  def create
      @person = Person.find(params[:person_id])
      @fact = @person.facts.create(fact_params)
      redirect_to person_path(@person)
    end

    private
      def fact_params
       params.require(:fact).permit(:text)
    end
end