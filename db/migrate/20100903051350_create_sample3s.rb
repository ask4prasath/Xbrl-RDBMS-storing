class CreateSample3s < ActiveRecord::Migration
  def self.up
    create_table :sample3s do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sample3s
  end
end
