class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.datetime :release_date
      t.string :title
      t.float :subscription_cost
      t.integer :status
      t.float :total_earned
      t.integer :total_subscriptions
      t.integer :total_views
      t.integer :total_vacancies
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
