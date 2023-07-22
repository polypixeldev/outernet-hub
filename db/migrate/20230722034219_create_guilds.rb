class CreateGuilds < ActiveRecord::Migration[7.0]
  def change
    create_table :guilds do |t|
      t.text :name
      t.text :website

      t.timestamps
    end
  end
end
