class SearchSuggestionsController < ApplicationController
  def index
  	render json: SearchSuggestion.terms_for(params[:term])
  end

  private

  def search_suggestion_params
  	params.require(:search_suggestion).permit(:term, :popularity)
  end		
end
