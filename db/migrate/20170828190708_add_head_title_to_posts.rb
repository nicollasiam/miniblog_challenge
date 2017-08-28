class AddHeadTitleToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :head_title, :string
  end
end
