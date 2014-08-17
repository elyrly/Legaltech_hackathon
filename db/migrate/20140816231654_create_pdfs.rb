class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.timestamps
    end
  end
end
