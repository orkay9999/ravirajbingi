class Employee < ActiveRecord::Base
    def self.search(search)
  if search
    where(['emp_name LIKE ?', "%#{search}%"])
  else
    all
  end
    end
end