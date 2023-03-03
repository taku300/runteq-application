module ArticleBlockDecorator
  def box_header_icon
    if sentence?
      '<i class="fa fa-edit"></i>'.html_safe
    elsif medium?
      '<i class="fa fa-image"></i>'.html_safe
    elsif embed?
      embed_icon
    end
  end

  def box_title
    if sentence?
      '文章'
    elsif medium?
      'メディア'
    elsif embed?
      '埋め込み'
    end
  end

  def embed_icon
    if blockable.youtube?
      '<i class="fa fa-youtube-play"></i>'.html_safe
    elsif blockable.twitter?
      '<i class="fa fa-twitter"></i>'.html_safe
    end
  end
end
