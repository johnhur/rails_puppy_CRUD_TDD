class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :bio
      t.string :image_url
      t.timestamps
    end
  end
end
