class ChangeUsersCompaniesToCompaniesUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table  :users_companies, :companies_users
  end
end
