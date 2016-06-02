class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.references :publisher, index: true, foreign_key: true
      t.string :title
      t.string :caption
      t.text :content
      t.datetime :publication_date
      t.string :image
      t.boolean :status

      t.timestamps null: false
    end
  end
end
