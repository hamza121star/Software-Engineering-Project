class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.date :Date 
      t.datetime :Time
      t.string :Name
      t.string :Message

      t.timestamps
    end
  end
end
