class AddBoulderproblemsUserInfo < ActiveRecord::Migration
  def change
    create_table :boulderproblems_user_infos do  |t|
      t.integer :user_id, null: false
      t.string :screen_name, null: false
      t.integer :boulderproblems_user_id, null: false
      t.timestamps
    end

    add_index :boulderproblems_user_infos, [:boulderproblems_user_id], unique: true
    add_index :boulderproblems_user_infos, [:user_id], unique: true
  end
end
