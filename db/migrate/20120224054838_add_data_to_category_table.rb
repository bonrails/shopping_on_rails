class AddDataToCategoryTable < ActiveRecord::Migration
  def self.up
    arr = ["women","men","baby","kids","home","furniture"]
	arr.each do |x|
      Category.create :name => "#{x}"
	end
					
  end
  def self.down
      Category.destroy_all
	end
end
