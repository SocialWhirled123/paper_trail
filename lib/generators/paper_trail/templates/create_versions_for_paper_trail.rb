class CreateVersionsForPaperTrail < ActiveRecord::Migration
  def change
    create_table :versions_for_paper_trail do |t|
      t.string   :item_type, :null => false
      t.integer  :item_id,   :null => false
      t.string   :event,     :null => false
      t.string   :whodunnit
      t.text     :object
      t.datetime :created_at
    end
    add_index :versions_for_paper_trail, [:item_type, :item_id]
  end
end
