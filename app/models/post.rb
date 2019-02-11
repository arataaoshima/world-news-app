class Post < ActiveRecord::Base
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Post.where(['title LIKE ?', "%#{search}%"])
    else
      Post.all #全て表示。
    end
  end
  
  has_many :category_tables
  has_many :categories, through: :category_tables
end



  