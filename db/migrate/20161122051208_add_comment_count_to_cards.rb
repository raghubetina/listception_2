class AddCommentCountToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :comments_count, :integer
  end
end
