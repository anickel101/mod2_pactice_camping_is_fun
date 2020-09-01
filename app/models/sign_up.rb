class SignUp < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    #validates :time, inclusion: 0..23
    #tried out ", in: 0..23" in the actual form. Pretty neato

end
