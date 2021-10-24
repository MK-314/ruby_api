module Api
    class ParticlesController < ApplicationController
        def index
            particles = Particle.all
            render json: {data: particles}
        end
    end
end