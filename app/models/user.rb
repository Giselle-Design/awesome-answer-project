class User < ApplicationRecord
    has_many :questions, dependent: :nullify
    has_many :answers, depenedent: :nullify
end
