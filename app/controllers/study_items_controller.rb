class StudyItemsController < ApplicationController
    def show
        load_study_item
    end

    def new
        @study_item = StudyItem.new
    end

    def create
        @study_item = StudyItem.new(study_item_params)
        
        if @study_item.save
            redirect_to root_path
        else
            render :new
        end

    end

    def edit
        load_study_item
    end

    def update
        load_study_item
        if @study_item.update(study_item_params)
          redirect_to root_path
        else
          render :edit
        end
      end
    
    def destroy
        load_study_item
        @study_item.destroy
        redirect_to root_path
    end



    private

        def load_study_item
            @study_item = StudyItem.find(params[:id])
        end

        def study_item_params
            params.require(:study_item).permit(:title, :category_id, :status)
        end
end