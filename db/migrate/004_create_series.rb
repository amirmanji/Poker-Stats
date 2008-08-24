class CreateSeries < ActiveRecord::Migration
  def self.up
    create_table :series do |t|
      t.column :name, :string
      t.column :is_complete, :boolean, :default => false
      t.column :start_date, :datetime, :null => false
    end
  end

  def self.down
    drop_table :series
  end
end
