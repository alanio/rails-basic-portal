class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
