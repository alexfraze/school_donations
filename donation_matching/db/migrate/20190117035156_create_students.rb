class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first
      t.string :last
      t.date :birthday
      t.integer :teacher_id

      t.timestamps
    end
  end
end
