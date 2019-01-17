class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :parent_id
      t.date :donation_date
      t.integer :teacher_id
      t.string :status
      t.float :amount
      t.text :notes
      t.integer :version

      t.timestamps
    end
  end
end
