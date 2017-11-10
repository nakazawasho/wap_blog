class Article < ApplicationRecord
  enum genre: { "ノージャンル": 0, "インターン": 1}
end
