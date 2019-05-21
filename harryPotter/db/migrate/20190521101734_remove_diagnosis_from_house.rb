class RemoveDiagnosisFromHouse < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :diagnosis, :string
  end
end
