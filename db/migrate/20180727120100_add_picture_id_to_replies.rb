class AddPictureIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :picture_id, :integer
  end
end
