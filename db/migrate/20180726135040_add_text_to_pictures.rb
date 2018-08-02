class AddTextToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :text, :text
  end
end
