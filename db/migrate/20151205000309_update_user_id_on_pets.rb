class UpdateUserIdOnPets < ActiveRecord::Migration
  def change
  	remove_column :pets, :user_fb_id
  	add_column :pets, :user_id, :integer
  end
end
