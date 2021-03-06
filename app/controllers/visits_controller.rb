class VisitsController < ApplicationController

    def index
        @visits = Visit.all #visits listed in desc order
    end

    def new
        @visit = Visit.new 
    end

    def create
        @visit = Visit.create(visit_params)
        if @visit.save
            redirect_to visits_path(@visit)
        else
            render :new       
        end
    end

#    def update 
#        if @visit.update(visit_params)
#            redirect_to visit_path(@visit)           
#       else
#           render :edit
#       end
#    end

    def show
        @visit = Visit.find(params[:id])
    end

    def destroy
        Visit.find(params[:id]).destroy
        redirect_to visits_path
    end

    private

    def visit_params
        params.require(:visit).permit(:goal_name, :short_term, :long_term, :word, :plus, :minus, :iwp, :prompt_type, :prompt_level, :error, :error_notes, :comments)
    end

end
