class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.column "name", :string
      t.string "permalink"
      t.integer "position"
      t.boolean "visible"

      t.timestamps null: false
    end
  end

  def down
    drop_table :pages
  end
end
