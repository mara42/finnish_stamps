class RemoveTagsFromStamps < ActiveRecord::Migration[5.1]
  def change
    remove_column :stamps, :tags, :string
  end
end
