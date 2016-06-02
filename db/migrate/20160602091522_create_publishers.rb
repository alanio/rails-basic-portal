class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.boolean :status

      t.timestamps null: false
    end
  end
end
