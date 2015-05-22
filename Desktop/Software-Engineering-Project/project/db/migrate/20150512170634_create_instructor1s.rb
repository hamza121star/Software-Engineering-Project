class CreateInstructor1s < ActiveRecord::Migration
  def change
    create_table :instructor1s do |t|
      t.string :email
      t.string :password
      t.date :DoB
      t.string :Full_Name
      t.string :Your_Description

      t.timestamps
    end
  end
end
