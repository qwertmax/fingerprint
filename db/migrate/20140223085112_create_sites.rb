class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :fp
      t.integer :user_id
      t.string :sitename
      t.string :uri

      t.timestamps
    end
  end
end
