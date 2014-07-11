class ChangeFpToStringInSites < ActiveRecord::Migration
  def self.up
   change_column :sites, :fp, :string
  end

  def self.down
   change_column :sites, :fp, :integer
  end
end
