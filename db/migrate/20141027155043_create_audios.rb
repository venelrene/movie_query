class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.integer:length
      t.string :speaker

      t.timestamps

      end
    end
end

