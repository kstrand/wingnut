class CreateColdnights < ActiveRecord::Migration
  def change
    create_table :coldnights do |t|

      t.timestamps
    end
  end
end
