class FriendsPdf < Prawn::Document
    def initialize(friends)
        super()
        @friends = Friend.order("id DESC").all
       
      #  text "test"
      #  text "id \##{(@friends.collect{ |f| [f.id]})}"
      #  text "first_name \##{(@friends.collect{ |f| [f.first_name]})}"
       
       # build_page
       # build_page2
        build_page3

        move_down 20

        build_page4

        move_down 20

        build_page5
    end

    def build_page
        define_grid columns: 2, rows: 3, gutter: 10
        col = 0
        row = 0
        @friends.each do |friend|
          grid(row,col).bounding_box do
            text friend.first_name
            if row == 2 && col == 1
              start_new_page
              define_grid columns: 2, rows: 3, gutter: 10
              col = 0
              row = 0
            else 
              if col == 1
                row += 1
                col = 0
              else
                col += 1
              end
            end
          end
        end
      end


      def build_page2      
        @friends.each do |friend|
            text "id \##{(friend.id)}"
           
            text friend.first_name 
            text friend.last_name 
        end
      end 


      def build_page3
        t = make_table([ ["this is the first row"],
            ["this is the second row"] ])
           t.draw
           move_down 20
           table([ ["short", "short", "loooooooooooooooooooong"],
            ["short", "loooooooooooooooooooong", "short"],
            ["loooooooooooooooooooong", "short", "short"] ])
           
      end

      def build_page4
        table([["foo", "bar", "baz"]] * 5) do |t|
            t.cells.border_width = 1
            t.before_rendering_page do |page|
            page.row(0).border_top_width = 3
            page.row(-1).border_bottom_width = 3
            page.column(0).border_left_width = 3
            page.column(-1).border_right_width = 3
            end
           end
        end

        
     def build_page5
       
            @friends.each do |friend|
                text "id \##{(friend.id)}" + " " + 
                              friend.first_name  + " " + 
                              friend.last_name 
            end
       
    end 

           
end 