class AddObjectChangesToVersions < ActiveRecord::Migration
  def change
    add_column :versions_for_paper_trail, :object_changes, :text
  end
end
