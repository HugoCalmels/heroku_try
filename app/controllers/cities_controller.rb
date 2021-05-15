class CitiesController < ApplicationController 
  #def index
    #@gossips = Gossip.all
  #end


  def index
    @cities = City.all
    @users = User.all
  end

  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
   
  end

  def show
    puts "$" * 60
    @city = City.find(params[:id])
    puts "$" * 60
    puts @city.name
    puts "$" * 60
    #puts Gossip.user_id.all
    
    puts "$" * 60
    # if @city.name = gossip.user.city.name 
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
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
