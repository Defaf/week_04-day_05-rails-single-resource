class AddHouseToWizards < ActiveRecord::Migration[5.2]
  def change
    add_reference :wizards, :house, foreign_key: true
  end
end
