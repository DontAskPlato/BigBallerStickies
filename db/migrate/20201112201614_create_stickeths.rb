class CreateStickeths < ActiveRecord::Migration[6.0]
  def change
    create_table :stickeths do |t|
      t.text :text

      t.timestamps
    end
  end
end
