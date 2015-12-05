class AddColumnImageToPets < ActiveRecord::Migration
  def up
    add_attachment :pets, :image
  end

  def down
    remove_attachment :pets, :image
  end
end
