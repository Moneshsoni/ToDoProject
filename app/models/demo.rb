class Demo < ApplicationRecord
    validates :task, presence: true
    validates :description, presence: true
end
