class User< ApplicationRecord
    before_save { self.email = email.downcase }
    has_many :articles, dependent: :destroy
    
    validates :age, numericality: { less_than_or_equal_to: 100,  only_integer: true }

   
    validates :gender, presence: true, 
    length: { minimum: 1 , maximum: 1}

    validates :username, presence: true, 
    uniqueness: { case_sensitive: false }, 
    length: { minimum: 3, maximum: 25 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    
    validates :email, presence: true, 
    uniqueness: { case_sensitive: false },
    length: { maximum: 105 },
    format: { with: VALID_EMAIL_REGEX }
  

      has_secure_password
    




  end
  