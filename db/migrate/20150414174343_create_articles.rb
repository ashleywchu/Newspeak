class CreateArticles < ActiveRecord::Migration
	def change
		create_table :articles do |t|
			t.string :title
			t.text :abstract
			t.text :sources
			t.text :body
			t.integer :rep
			t.integer :author_id
			# t.integer :comment_id better to use a join table and nested attr
			t.timestamps null: false
		end
	end
end
