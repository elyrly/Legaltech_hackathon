class Pdf < ActiveRecord::Base

  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Document.create! row.to_hash
  end
end

end
