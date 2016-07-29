class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.column "name", :string
      t.integer "position"
      t.boolean "visible"
      t.string "comment-type"
      t.text "content"

      t.timestamps null: false
    end
  end

  def down
    drop_table :pages
  end
end
