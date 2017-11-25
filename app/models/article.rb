class Article < ApplicationRecord
  enum genre: { "ノージャンル": 0, "2018年入社予定者インタビュー": 1, "パスホルダーインタビュー": 2, "Works Way Woker インタビュー": 3, "HATENK王インタビュー": 4, "その他会社に関する情報": 5}

  def created_date
    created_at.strftime('%Y/%m/%d')
  end

  def next_page
    Article.where('id > ?', self.id).order('id ASC').first
  end

  def previous_page
    Article.where('id < ?', self.id).order('id DESC').first
  end
end
