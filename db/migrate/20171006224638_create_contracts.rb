class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :country
      t.string :supra_region
      t.string :region

      t.timestamps
    end
  end
end
