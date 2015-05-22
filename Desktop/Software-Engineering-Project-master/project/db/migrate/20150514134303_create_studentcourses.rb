class CreateStudentcourses < ActiveRecord::Migration
  def change
    create_table :studentcourses do |t|
      t.string :email
      t.string :coursecode
      t.date :date_of_joining

      t.timestamps
    end
  end
end
