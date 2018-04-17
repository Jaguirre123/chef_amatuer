class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.text :content
      t.string :title
      t.string :category
      t.references :user, foreign_key: true
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.timestamps
    end
  end
end
