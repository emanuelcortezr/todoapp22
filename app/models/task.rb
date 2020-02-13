class Task < ApplicationRecord
    has_many :todos
    has_many :task, through: :todos
end
