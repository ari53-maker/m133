class SchuelersController < ApplicationController
  def index
  @schuelers=Schueler.all.order('name ASC')
  @klasse = Klasse.all
  @NumberOfSchuelers = Schueler.count
  @AverageAge = Schueler.all.average(:age)
  @schuelers=Schueler.all.order('name ASC')
end

def edit
  @schuelers = Schueler.find(params[:id])
  @klassen = Klasse.all
end

def new
  @schuelers=Schueler.all
  @klassen = Klasse.all
end

def create
  schueler= Schueler.new(schueler_params)
  if schueler.save
    redirect_to action: "index"
  else
    render action: "new"
  end
end

def destroy
  Schueler.find(params[:id]).destroy
  redirect_to action: "index"
end

def update
  schueler = Schueler.find(params[:id])
  if schueler.update_attributes(Schueler_params)
    redirect_to action: "index"
  else
    render action: "edit"
  end
end
def schueler_params
  params.require(:schueler).permit(:name, :firstname, :klasse_id, :sex, :age, :email, :des1, :des2, :des3)
end
end
