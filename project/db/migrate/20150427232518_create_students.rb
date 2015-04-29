class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :gender
      t.date :dob

      t.timestamps
    end
  end
end
