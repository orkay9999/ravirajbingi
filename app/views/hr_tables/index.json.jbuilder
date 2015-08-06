json.array!(@hr_tables) do |hr_table|
  json.extract! hr_table, :id, :Hol_req_from, :Hol_from, :Hol_to, :Hol_taken, :Hol_bal, :Hol_approved_by
  json.url hr_table_url(hr_table, format: :json)
end
