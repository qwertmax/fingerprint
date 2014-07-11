class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :fingerprint
      t.string :fp

      t.timestamps
    end
  end
end
