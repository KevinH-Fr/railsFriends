class FriendPdf < Prawn::Document
    def initialize(friend)
        super(top_margin: 70)
        @friend = friend
        id
        nom_complet

    end 

    def id
        text "friend \##{@friend.id}", size: 30, style: :bold
        
    end 

    def nom_complet
        move_down 20
        text "firstname \##{@friend.first_name}", size: 20, style: :bold
        text "lastname \##{@friend.last_name}", size: 20, style: :bold
       
    end 

        
end 