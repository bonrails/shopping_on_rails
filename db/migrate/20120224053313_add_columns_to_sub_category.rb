class AddColumnsToSubCategory < ActiveRecord::Migration
  def self.up
    
	add_column :sub_categories,:name,:string
	add_column :sub_categories,:category_id,:integer
  end
  def self.down
    
	remove_column :sub_categories,:name,:string
	remove_column :sub_categories,:category_id,:integer
  end
end
