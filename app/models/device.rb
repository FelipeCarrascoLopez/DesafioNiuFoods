  class Device < ApplicationRecord
    belongs_to :store

    enum status: { offline: 0, online: 1, maintenance: 2 }
  end
