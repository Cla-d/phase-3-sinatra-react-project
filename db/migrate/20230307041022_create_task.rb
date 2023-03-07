class CreateTask < ActiveRecord::Migration[6.1]
def change
  create_table :tasks do |t|
    t.string :name
    t.string :status
    t.text :description
    t.integer :user_id
    t.integer :duedate
  end
end
end