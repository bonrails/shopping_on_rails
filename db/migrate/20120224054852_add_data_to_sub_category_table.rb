class AddDataToSubCategoryTable < ActiveRecord::Migration
  def self.up
    all = Category.all

    data = {
	:men=>["accessories","clothing","shoes"],:women=>["accessories","clothing"],:baby=>["baby bath","baby shoes"]
	}

	all.each do |x|
		id = x.id
		sub_categories = data[x.name.to_sym]
		if sub_categories
			sub_categories.each do |s|
				SubCategory.create :name => "#{s}",:category_id => "#{id}"
			end
		end
	end
   
  end
  def self.down
      SubCategory.destroy_all
  end
end
