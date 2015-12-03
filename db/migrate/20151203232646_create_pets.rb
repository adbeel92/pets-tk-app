class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :family
      t.string :user_fb_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
