json.array!(@employees) do |employee|
  json.extract! employee, :id, :emp_name, :address, :DOB, :mobile, :email, :Designation, :Dept, :salary, :Hol_taken, :Hol_bal
  json.url employee_url(employee, format: :json)
end
