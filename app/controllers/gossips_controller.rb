class GossipsController < ApplicationController
  def index
    @gossip = Gossip.all.sample
    @gossips = Gossip.all
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
        @gossip = Gossip.all.sample
    end

  def create
    @gossip = Gossip.new(title: params[:title],content: params[:gossip], user: User.all.sample)
  if @gossip.save
    redirect_to gossip_path(@gossip.id)
  else
    render new_gossip_path
  end
end

  def edit
    @gossip = Gossip.find(params[:id])
 # if current_user != @gossip.user_id
 #   render edit_gossip_path
 # end
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    @gossip = Gossip.find(params[:id])
if @gossip.update('title' => params[:title], 'content' => params[:content], 'user_id' => @gossip.user_id)
  flash[:success] = "Potin modifié!"
  redirect_to @gossip
else
  flash[:notice] = "Un problème est survenu !"
  render :edit
end
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
