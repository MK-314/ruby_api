class CreateParticles < ActiveRecord::Migration[6.1]
  def change
    create_table :particles do |t|
      t.string :title
      t.timestamps
    end
  end
end
