class Article < ActiveRecord::Base
	belongs_to :author, class_name: :User
	has_many :comments
  has_reputation :votes, source: :user, aggregated_by: :sum
  acts_as_taggable 

  validates_uniqueness_of :title
  validates_presence_of :title, :abstract, :body

  def self.search(search)
    where('title LIKE ?', "%#{search}%")
  end
  
  def self.title_search(search)
    search(search).limit(5).pluck(:title)
    search(search).limit(5).pluck(:tags)
    search(search).limit(5).pluck(:author)
  end

end
