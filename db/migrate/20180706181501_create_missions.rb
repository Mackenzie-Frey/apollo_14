class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :title
      t.integer :time_in_space
      add_column :astronaut_id, :missions, :integer
    end
  end
end

# ALTER TABLE missions ADD CONSTRAINT mission_id FOREIGN KEY
# add_foreign_key :astronaut_id, :missions, column: :author_id, primary_key: "mission_id"
# rails g migration AddAstronautIdToMissions astronaut_id:integer

# rails g migration AddAstronautIdToMissions astronaut:references
