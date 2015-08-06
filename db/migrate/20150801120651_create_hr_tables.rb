class CreateHrTables < ActiveRecord::Migration
  def change
    create_table :hr_tables do |t|
      t.string :Hol_req_from
      t.date :Hol_from
      t.date :Hol_to
      t.integer :Hol_taken
      t.integer :Hol_bal
      t.string :Hol_approved_by

      t.timestamps null: false
    end
  end
end
