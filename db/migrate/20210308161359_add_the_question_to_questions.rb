class AddTheQuestionToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :the_question, :string
  end
end
