class CreateSchuelers < ActiveRecord::Migration[6.1]
  def change
    create_table :schuelers do |t|
      t.references :klasse, foreign_key: true
      t.string :name
      t.string :firstname
      t.string :email
      t.string :age
      t.string :sex
      t.string :des1
      t.string :des2
      t.string :des3

      t.timestamps
    end
  end
end
