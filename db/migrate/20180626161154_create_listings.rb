class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :url
      t.string :phoneFormatted
      t.string :phone
      t.string :address
      t.string :city
      t.string :country
      t.string :crossStreet
      t.integer :postalCode
      t.string :state

      t.timestamps
    end
  end
end
