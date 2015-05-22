class CreateInstructorcourses < ActiveRecord::Migration
  def change
    create_table :instructorcourses do |t|
      t.string :instructoremail
      t.string :coursecode
      t.string :coursename
      t.string :coursedescription

      t.timestamps
    end
  end
end
