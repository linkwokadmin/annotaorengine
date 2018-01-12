module AnnotatorStore
  class PagesController < ApplicationController
    before_action :format_input, only: [:search]

    def index
      @annotations = AnnotatorStore::Annotation.all
      @total = @annotations.size
    end

    def search
      @annotations = AnnotatorStore::Annotation.all
      @total = @annotations.size
    end

    private

    def format_input
      params[:search] = {}
      params[:search][:uri] = params[:uri]
    end

    def search_params
      params.require(:search).permit(:uri)
    end
  end
end
