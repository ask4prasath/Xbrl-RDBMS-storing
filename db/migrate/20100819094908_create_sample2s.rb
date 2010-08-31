class CreateSample2s < ActiveRecord::Migration
  def self.up
    create_table :sample2s do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sample2s
  end
end
