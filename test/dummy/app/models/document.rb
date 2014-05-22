class Document < ActiveRecord::Base
  has_paper_trail :versions_on_paper_trail => :paper_trail_versions,
                  :on => [:create, :update]
end
