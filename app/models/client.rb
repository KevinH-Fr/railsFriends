class Client < ApplicationRecord

  
    has_many :commandes, :dependent => :delete_all

end