class CompanyDetial < ActiveRecord::Migration[7.0]
  def change
    create_table :users_companies, id: false do |t|
      t.belongs_to :company
      t.belongs_to :user
    end
  end
end
