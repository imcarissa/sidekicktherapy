class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string "name"
      t.boolean "short_term"
      t.boolean "long_term"
      t.timestamps
    end
  end
end
