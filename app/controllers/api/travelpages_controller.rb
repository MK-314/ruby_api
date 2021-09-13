module Api
    class TravelpagesController < ApplicationController
      def index
          travelpages = Travelpage.all
          render json: {data: travelpages}
      end
    end
end