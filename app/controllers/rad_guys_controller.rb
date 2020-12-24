class RadGuysController < ApplicationController

    def new
      @rad_guy = RadGuy.new
    end

    def create
      @rad_guy = RadGuy.create(rad_guy_params)
      if @rad_guy.save
            flash[:success] = "Rad Guy has been created!"
            redirect_to @rad_guy
        else
            render :new
        end
    end

    def show
      @rad_guy = RadGuy.find(params[:id])
    end

    private

    def rad_guy_params
      params.require(:rad_guy).permit(:name, :title, :description, :image)
    end
end