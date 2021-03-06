class CityController < ApplicationController
  def index
    @cities = City.all
  # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
end

def show
    @city = City.find(params[:id])
  # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
end

def new
      @city = City.new
  # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
end

def create
  # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
  # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
  # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
end

def edit
  # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
end

def update
  # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
  # pour info, le contenu de ce formulaire sera accessible dans le hash params
  # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
end

end
