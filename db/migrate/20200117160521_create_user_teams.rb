class CreateUserTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :user_teams do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :team

      t.timestamps
    end
  end
end
