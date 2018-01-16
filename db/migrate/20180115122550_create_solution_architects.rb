class CreateSolutionArchitects < ActiveRecord::Migration[5.1]
  def change
    create_table :solution_architects do |t|
      t.string :firstname
      t.string :lastname
      t.string :shortcut
      t.integer :team_id

      t.timestamps
    end
  end
end
