class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer    :postal_code, null: false
      t.text       :address,     null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
