require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'visiting the index' do

    visit root_path

    assert_selector 'h1', text: 'To Study List'
    assert_link 'Add a new item', href: new_study_item_path
  end
end