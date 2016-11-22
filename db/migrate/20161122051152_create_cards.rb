class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.integer :list_id
      t.string :image

      t.timestamps

    end
  end
end
