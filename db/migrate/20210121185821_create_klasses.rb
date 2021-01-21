class CreateKlasses < ActiveRecord::Migration[6.1]
  def change
    create_table :klasses do |t|
      t.string :klassenname
      t.string :code
      t.string :des1
      t.string :des2
      t.string :des3


      t.timestamps
    end
  end
end
