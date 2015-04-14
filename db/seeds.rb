# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def run_seed
	make_user

end

def make_user
	User.create(:name => "Shawn", :email => "shawn@awesome.com", :article_rep => 1000, :comment_rep => 500)
	User.create(:name => "Keith", :email => "keith@awesome.com", :article_rep => 900, :comment_rep => 400)
	User.create(:name => "Ashley", :email => "ashley@awesome.com", :article_rep => 800, :comment_rep => 300)
	User.create(:name => "Sanj", :email => "sanj@awesome.com", :article_rep => -1000, :comment_rep => -500 )
end

run_seed