class AddTitleToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :title, :text
  end
end
