class FriendsPdf < Prawn::Document
    def initialize(friends)


        super()
        @friends = Friend.all

        @friend = Friend.order('id DESC').all
        id
        first_name
        thanks_message
       
        end 
        
        def id
            text 'hello theeeeere'
           

        end 




        def thanks_message
            move_down 15
            text "Thank you for your order.Print this receipt as 
            confirmation of your order.",
            :indent_paragraphs => 40, :size => 13
          end



end 