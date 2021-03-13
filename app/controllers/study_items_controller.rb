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
        set_study_item
        if @study_item.update(study_item_params)
          redirect_to @study_item
        else
          render :edit
        end
      end



    private

        def load_study_item
            @study_item = StudyItem.find(params[:id])
        end

        def study_item_params
            params.require(:study_item).permit(:title, :category_id, :status)
        end
end