class ChangeColumnTypeInBookmarks < ActiveRecord::Migration[6.1]
  def change
    change_column :bookmarks, :comment, :string
  end
end
