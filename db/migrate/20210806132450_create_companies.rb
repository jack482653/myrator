class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :introduction
      t.text :vision
      t.text :news
      t.text :salary_welfare
      t.boolean :enabled

      t.timestamps
    end
  end
end
