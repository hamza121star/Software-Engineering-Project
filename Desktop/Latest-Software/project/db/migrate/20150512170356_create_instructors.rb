class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.date :DoB
      t.string :Full_Name
      t.string :Your_Description

      t.timestamps
    end
  end
end
