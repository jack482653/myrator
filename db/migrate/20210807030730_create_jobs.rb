class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.text :requirement
      t.text :welfare
      t.text :salary_range
      t.boolean :enabled
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
