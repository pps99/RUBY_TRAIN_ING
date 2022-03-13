class Post < ApplicationRecord
  validates :title, presence: true
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Post.create! row.to_hash
    end
  end
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |post|
        csv << post.attributes.values_at(*column_names)
      end
    end
  end
end
