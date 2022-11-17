class RemoveCommentToBookmark < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :comment, :string
  end
end
