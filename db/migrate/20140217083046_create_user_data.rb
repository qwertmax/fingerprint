class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.integer :uid
      t.string :data

      t.timestamps
    end
  end
end
