class Post < ApplicationRecord
  validates :content, 
  length: {in: 1..140, message: "doit contenir entre 1 et 140 caractères" }
end
