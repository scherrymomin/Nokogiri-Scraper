class Product < ActiveRecord::Base
  attr_accessible :colors, :description, :designer, :discount_price, :image, :retail_price, :sizes, :title, :url
end
