class CreateStudyItems < ActiveRecord::Migration[6.1]
  def change
    create_table :study_items do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
