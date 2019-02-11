class Category < ActiveRecord::Base
    has_many :category_tables
    has_many :posts, through: :category_tables
end
