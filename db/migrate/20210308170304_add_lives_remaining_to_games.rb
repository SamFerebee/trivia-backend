class AddLivesRemainingToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :lives_remaining, :integer
  end
end
