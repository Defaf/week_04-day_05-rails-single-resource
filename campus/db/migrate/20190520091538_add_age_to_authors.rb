class AddAgeToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :age, :string
  end
end
