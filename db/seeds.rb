# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def run_seed
	make_users
	make_articles
	make_tags
	make_comments
end

def make_users
	User.create(:name => "Shawn", :email => "shawn@awesome.com", :article_rep => 1000, :comment_rep => 500)
	User.create(:name => "Keith", :email => "keith@awesome.com", :article_rep => 900, :comment_rep => 400)
	User.create(:name => "Ashley", :email => "ashley@awesome.com", :article_rep => 800, :comment_rep => 300)
	User.create(:name => "Sanj", :email => "sanj@awesome.com", :article_rep => -1000, :comment_rep => -500)
end

def make_articles
	Article.create(:title => "Dank", :abstract => "lots of facts", :sources => "me", :body => "all the body", :rep => 10, :author_id => 1)
	Article.create(:title => "Blank", :abstract => "lots of factss", :sources => "him", :body => "all the body", :rep => 5, :author_id => 4)
end

def make_tags
	Tag.create(:name => "Best", :article_id => 1)
	Tag.create(:name => "West", :article_id => 2)
end

def make_comments
	Comment.create(:body => "Awesome!", :user_id => 3, :article_id => 1, :rep => 3)
	Comment.create(:body => "Wowza", :user_id => 1, :article_id => 2, :rep => 0)
end

run_seed