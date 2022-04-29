class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "My name is Scott..."
    @about_me2 = "Deuxième paragraphe de texte dans about me..."
  end
  
end
