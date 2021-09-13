class CreateTravelpages < ActiveRecord::Migration[6.1]
  def change
    create_table :travelpages do |t|
      t.integer :days
      t.integer :people
      t.integer :guides
      t.string :sleep_in
      t.text :difficulty
    end
  end
end
