class CreateStatics < ActiveRecord::Migration[7.1]
  def change
    create_table :statics do |t|
      t.string :home
      t.string :disclaimer

      t.timestamps
    end
  end
end
