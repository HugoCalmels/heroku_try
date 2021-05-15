class UsersController < ApplicationController 
  #def index
    #@gossips = Gossip.all
  #end


  def index
    @users = User.all

  end

  def new
    
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
     city = City.find_by(name: params[:city])
    @user = User.new(
      'email' => params[:email],
      'password' => params[:password],
      'first_name' => params[:first_name],
      'last_name' => params[:last_name],
      'describtion' => params[:describtion],
      'age' => params[:age],
      'city' => city
    )
      puts "%" * 60
      puts @user.city
      puts @user.age
      puts @user.first_name
      puts @user.last_name
      puts @user.email
      puts @user.describtion
      puts @user.password
      puts city
      puts "%" * 60
    if @user.save
      redirect_to gossips_path
    else 
      render "new"
    end
   
  end

  def show
    @user = User.find(params[:id])
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
