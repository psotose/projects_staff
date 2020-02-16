class Staff < ApplicationRecord
    has_and_belongs_to_many :projects
    validates :name, presence: {message: 'The worker must be identified with a name'}
end
