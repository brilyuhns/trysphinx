class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.references :resource
      t.references :group
      
      t.timestamps
    end
  end
end
