class KlassenController < ApplicationController
  def index
    @klassen=Klasse.all.order('klassenname DESC')
    @NumberOfKlassen=Klasse.count
  end

  def show

  end

  def create
      klasse = Klasse.new(klasse_params)
      if klasse.save
      redirect_to action: "index"
    else
      render action: "index"
    end
  end

  def klasse_params
      params.require(:klasse).permit(:klassenname, :code, :des1, :des2, :des3)
  end

  def new

  end

  def destroy
    if Schueler.where(klasse_id: params[:id]).count > 0
      redirect_to action: "index", error: true
    else
     Klasse.find(params[:id]).destroy
     redirect_to action: "index"
    end
  end
end
