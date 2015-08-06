class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.string :address
      t.date :DOB
      t.string :mobile
      t.string :email
      t.string :Designation
      t.string :Dept
      t.decimal :salary
      t.integer :Hol_taken
      t.integer :Hol_bal

      t.timestamps null: false
    end
  end
end
