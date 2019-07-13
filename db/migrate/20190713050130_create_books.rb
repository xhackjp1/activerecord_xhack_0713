class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn, limit: 13, null: true
      # t.integer :author_id
      # t.integer :publisher_id
      # t.integer :genre_id
      t.references :author, foreign_key: true
      t.references :publisher, foreign_key: true
      # t.references :genre, foreign_key: true
      t.timestamps
    end
  end
end
