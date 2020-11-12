class StickiesController < ApplicationController
    def index
        @sticketh = Sticketh.all 
    end
    def show
        @sticketh = Sticketh.find_by(params[:id])
    end
    def new 
    end
    def create
        @sticketh = Sticketh.new(params[:sticketh])
        @sticketh.text = params[:text]
        @sticketh.save
        redirect_to action="/stickies/index"
    end
    private
    def sticketh_params
        params.require(:sticketh).permit(:text)

    end
end

