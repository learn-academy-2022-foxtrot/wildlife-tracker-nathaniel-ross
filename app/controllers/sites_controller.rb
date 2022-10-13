class SitesController < ApplicationController

    def index
        sites = Site.all
        render json: sites, include: [:animal, :sighting]
      end


    def show
        site = Site.find_by(id: params[:id])
        render json: { id: site.id, animal: site.animal, sighting: site.sighting}
    end
end
