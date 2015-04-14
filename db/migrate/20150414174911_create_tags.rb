class CreateTags < ActiveRecord::Migration
  def change
  	create_table :tags do |t|
  		t.string :name
  		t.integer :article_id
  	end
  end
end
