class Bird < ApplicationRecord
  has_many :records, dependent: :destroy
end
