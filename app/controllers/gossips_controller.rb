class GossipsController < ApplicationController 
  #def index
    #@gossips = Gossip.all
  #end



  def index
    @gossips = Gossip.all
    @comments = comments_all
    
  end

  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    #Récupération des champs du formulaire
    @post = Gossip.new(
      'title' => params[:title],
      'content' => params[:content],
      'user_id' => session[:user_id],
      'tag_id' => Tag.all.sample.id
    )
    if @post.save
      redirect_to gossips_path
    else 
      render "new"
    end
  
  end

  def show
    @gossip = Gossip.find(params[:id])
    puts "$" * 60
    puts @id = params[:id]
    puts "$" * 60
    
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(gossip_params)
    redirect_to gossips_path
    

  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end

  def gossip_find
    Gossip.find(params[:id])
  end

  def comments_all
    Comment.all
  end
end
