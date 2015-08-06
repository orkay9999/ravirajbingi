class HrTable < ActiveRecord::Base
 def self.search(search)
  if search
    where(['hol_req_from LIKE ?', "%#{search}%"])
  else
    all
  end
    end
end
