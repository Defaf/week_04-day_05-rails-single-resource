class AddOriginalLanguageToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :originalLanguage, :string
  end
end
