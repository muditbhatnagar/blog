class AddImageToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :image, :integer
  end
end
