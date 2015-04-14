class CreateArticles < ActiveRecord::Migration
	def change
		create_table :articles do |t|
			t.string :title
			t.text :abstract
			t.text :sources
			t.text :body
			t.integer :rep
			t.integer :author_id
			t.integer :comment_id
		end
	end
end
