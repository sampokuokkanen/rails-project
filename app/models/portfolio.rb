# frozen_string_literal: true

class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :main_image, :thumb_image
end
