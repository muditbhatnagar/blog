class AddPictureIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :picture_id, :integer
  end
end
