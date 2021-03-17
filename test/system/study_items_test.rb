require 'application_system_test_case'

class StudyItemsTest < ApplicationSystemTestCase

    test 'visiting the index' do
        StudyItem.create!(title: "Tags", category: Category.new(title: "HTML"), status: 0)
        StudyItem.create!(title: "Loops", category: Category.new(title: "Ruby"), status: 1)
        StudyItem.create!(title: "Query", category: Category.new(title: "SQL"), status: 2)

        visit root_path

        assert_text 'Tags'
        assert_text 'HTML'
        assert_text 'Loops'
        assert_text 'Ruby'
        assert_text 'Query'
        assert_text 'SQL'
    end
    
end