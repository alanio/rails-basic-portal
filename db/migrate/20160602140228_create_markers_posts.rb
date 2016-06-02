class CreateMarkersPosts < ActiveRecord::Migration
  def change
    create_table :markers_posts do |t|
      t.belongs_to :marker, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true
    end
  end
end
