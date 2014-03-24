class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :gender
      t.string :religion
      t.string :city
      t.string :education
      t.string :employment

      t.timestamps
    end
  end
end
