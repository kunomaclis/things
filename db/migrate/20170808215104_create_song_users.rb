class CreateSongUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :song_users do |t|
      t.references :user
      t.references :song

      t.timestamps
    end
  end
end
