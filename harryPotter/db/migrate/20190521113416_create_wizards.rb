class CreateWizards < ActiveRecord::Migration[5.2]
  def change
    create_table :wizards do |t|
      t.string :fisrt_name
      t.string :last_name

      t.timestamps
    end
  end
end
