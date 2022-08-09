class Document < ApplicationRecord
    belongs_to :user

    validates_presence_of :aadhar
    validates_presence_of :pancard

    validates :aadhar,   :presence => {:message => 'aadhar number must be 12 digits'},
                     :numericality => true,
                     :length => {is: 12} 


    validates :pancard, length: {is: 10}

    validates_uniqueness_of :aadhar

    validates_uniqueness_of :pancard




    

end
