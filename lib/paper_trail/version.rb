require File.expand_path('../version_concern', __FILE__)

module PaperTrail
  class Version < ::ActiveRecord::Base
    self.table_name = 'versions_for_paper_trail'
    include PaperTrail::VersionConcern
  end
end
