class Project < ApplicationRecord
    has_and_belongs_to_many :staffs
    validates :name, presence: {message: 'Project must have a name'} 
    
    def available_staff
        (Staff.all - staffs).pluck(:name, :id)
    end    
end
