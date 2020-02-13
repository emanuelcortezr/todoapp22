class User < ApplicationRecord
 after_create :load_todos
 has_many :todos
 has_many :task, through: :todos

 private

 def load_todos
    Task.all.each do |task|
        Todo.create({task: task, user: self})
    end
 end
end
