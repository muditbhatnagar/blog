class AddPictureIdToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :picture_id, :integer
  end
end
