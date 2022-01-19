class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.string "goal_name"
      t.string "word"
      t.string "plus"
      t.string "minus"
      t.string "iwp"
      t.string "notes"
      t.timestamps
    end
  end
end
