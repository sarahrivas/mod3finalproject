class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :lives
      t.references :user
      t.timestamps
    end
  end
end
