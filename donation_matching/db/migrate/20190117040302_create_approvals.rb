class CreateApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :approvals do |t|
      t.integer :teacher_id
      t.integer :donation_id
      t.string :status
      t.text :notes
      t.integer :version

      t.timestamps
    end
  end
end
