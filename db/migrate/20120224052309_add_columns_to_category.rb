class AddColumnsToCategory < ActiveRecord::Migration
  def self.up
     
     add_column :categories,:name,:string
	
  end
  def self.down
	 remove_column :categories,:name,:string
  end
end
