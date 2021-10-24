class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :strCategory
      t.string :strCategoryThumb
      t.string :strCategoryDescription
    end
  end
end
