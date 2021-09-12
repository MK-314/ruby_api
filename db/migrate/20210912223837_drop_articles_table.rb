class DropArticlesTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :articles
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
