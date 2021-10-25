class Students < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :techName
    end
  end
end