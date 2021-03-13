class StudyItem < ApplicationRecord
  belongs_to :category

  def full_title
    "#{title} - #{category.title}"
  end
end
