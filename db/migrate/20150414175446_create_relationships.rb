class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
    	t.integer :author_id
    	t.integer :reader_id
    end
  end
end
