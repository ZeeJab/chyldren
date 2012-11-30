class CreateBadQuotes < ActiveRecord::Migration
  def change
    create_table :bad_quotes do |t|
      t.text :bad_quote

      t.timestamps
    end
  end
end
