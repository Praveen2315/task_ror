class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :company_id
      t.string :name
      t.string :location
      t.text :technology

      t.timestamps
    end
  end
end
