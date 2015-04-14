class CreateArticles < ActiveRecord::Migration
	def change
		create_table :articles do |t|
			t.string :title
			t.text :abstract
			t.text :source
			t.text :body
			t.integer :author_id
			t.interger :comment_id
		end
	end
end
