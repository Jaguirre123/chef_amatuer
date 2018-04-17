class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :specialty
      t.text :bio
      t.string :email
      t.string :password_digest
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.timestamps
    end
  end
end
