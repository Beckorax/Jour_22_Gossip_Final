require 'bcrypt'
class UsersController < ApplicationController
  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    @user = User.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
    @user = User.new
    @all_cities = City.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    if params[:password] == '' || params[:email] == ''
   puts "Error : you need to complete this field email/pw"
   flash[:Notice] = "Utilisateur non créé"
   render '/users/new'
  else
    @user = User.create('last_name': params[:last_name], 'first_name': params[:first_name], 'email': params[:email], 'age': params[:age], 'description': params[:description], 'password_digest': BCrypt::Password.create(params[:password]), 'city_id': params[:city].to_i)
        puts "The user #{params[:email]}was succesfully saved !"
        flash[:success] = "Utilisateur créé !"
        redirect_to '/users/new'
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  end
end
  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
