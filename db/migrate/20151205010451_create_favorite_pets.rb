class CreateFavoritePets < ActiveRecord::Migration
  def change
    create_table :favorite_pets do |t|
      t.integer :pet_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
