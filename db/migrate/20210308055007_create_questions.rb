class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.integer :point_value
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :hint

      t.timestamps
    end
  end
end
