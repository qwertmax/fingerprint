class AddSitesCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :sites_count, :integer
  end
end
