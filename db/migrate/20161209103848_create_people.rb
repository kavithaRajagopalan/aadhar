class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :address
      t.date :dob
      t.string :aadharNum
      t.string :gender

      t.timestamps null: false
    end
  end
end
