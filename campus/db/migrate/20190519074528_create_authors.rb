class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :firstName
      t.string :lastName
      t.string :location

      t.timestamps
    end
  end
end
