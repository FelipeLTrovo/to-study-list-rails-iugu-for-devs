class StudyItem < ApplicationRecord
  belongs_to :category

  enum status: {
    pending: 0,
    in_progress: 1,
    deleted: 2
  }

  def full_title
    "#{title} - #{category.title}"
  end
end
