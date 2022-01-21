class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.string "goal_name"
      t.boolean "short_term"
      t.boolean "long_term"
      t.string "word"
      t.boolean "plus"
      t.boolean "minus"
      t.boolean "iwp"
      t.string "prompt_type"
      t.boolean "prompt_level"
      t.boolean "error"
      t.string "error_notes"
      t.string "comments"
      t.timestamps
    end
  end
end
