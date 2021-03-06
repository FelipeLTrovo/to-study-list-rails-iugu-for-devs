class HomeController < ApplicationController
    def index
        load_study_items
        load_study_items_statuses
    end

    private

        def load_study_items_statuses
            @study_items_statuses = StudyItem.statuses
            @colors = ["is-info", "is-warning", "is-success"]
        end

        def load_study_items
            @study_items = StudyItem.all
        end

end