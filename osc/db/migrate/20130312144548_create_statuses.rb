class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :Title
      t.integer :position

      t.timestamps
    end
  end
end
