class CreateComments < ActiveRecord::Migration
	def change
		create_table :comments do |t|
			t.text :body
			t.integer :user_id
			t.integer :article_id
			t.integer :rep
			t.timestamps null: false
		end
	end
end