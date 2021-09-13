module Api
    class TravelpagesController < ApplicationController
      def index
          travelpages = Article.all
          render json: {data: travelpages}
      end
    end
end