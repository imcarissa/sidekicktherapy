class Visit < ApplicationRecord
    scope :desc, order(created_at: :desc)
end
