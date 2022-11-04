class RemoveColumnFromCompanies < ActiveRecord::Migration[7.0]
  def change
    remove_column :companies, :company_id, :integer
  end
end
