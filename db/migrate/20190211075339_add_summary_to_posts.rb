class AddSummaryToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :summary, :test
  end
end
