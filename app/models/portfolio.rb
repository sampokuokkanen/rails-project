# frozen_string_literal: true

class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular!')
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'https://via.placeholder.com/350x150'
    self.thumb_image ||= 'https://via.placeholder.com/50x50'
  end
end
