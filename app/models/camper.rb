class Camper < ApplicationRecord
    has_many :sign_ups
    has_many :activities, through: :sign_ups

    validates :name, presence: true
    validates :name, uniqueness: true
    #validates :age, inclusion: 8..18
    #tried out ", in: 8..18" in the actual form. Pretty neato

end
