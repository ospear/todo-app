# frozen_string_literal: true

# task
class Task < ApplicationRecord
  has_and_belongs_to_many :tags

  enum status: { todo: 0, doing: 1, done: 2 }
end
