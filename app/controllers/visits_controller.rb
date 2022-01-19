class VisitsController < ApplicationController

    def index
        @visit = Visit.all.order("created_at DESC")
    end

    def new
        @visit = Visit.new
    end

    def create
        @visit = Visit.create(visit_params)
        redirect_to visit_path(@visit)
    end

    def edit
        @genre = Visit.find(params[:id])
    end

    def update 
        @visit = Visit.find(params[:id])
        @visit.update(visit_params)
        redirect_to visit_path(@visit)
    end

    def show
        redirect_to visits_path if !@visit
    end

    def destroy
        visit.find(params[:id]).destroy
        redirect_to visits_path
    end

    private
    def visit_params
        params.require(:visit).permit(:goal_name, :visit_date, :word, :plus, :minus, :iwp, :notes)
    end
    
    def set_visit
        @visit = Visit.find_by_id(params[:id])
    end

end
