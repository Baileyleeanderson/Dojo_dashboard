class Dojo < ActiveRecord::Base
    has_many :students
    validates :branch, :street, :city, presence: true, length: (0..100)
    validates :state, presence: true,length: { maximum: 2 }
end
