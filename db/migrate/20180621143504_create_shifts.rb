class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.date :date
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
