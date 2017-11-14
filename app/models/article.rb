class Article < ApplicationRecord
  enum genre: { "ノージャンル": 0, "インターン": 1}

  def created_date
    created_at.strftime('%Y/%m/%d')
  end
end
