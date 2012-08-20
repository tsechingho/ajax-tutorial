module TwitterBootstrapHelper
  def iconed_link_to(text, url, options = {})
    icon_class = options.delete(:icon_class)
    link_to url, options do
      content_tag(:i, nil, class: icon_class) << ' ' << text
    end
  end

  def link_to_show(url, options = {})
    icon_class = options.delete(:icon_class) || 'icon-eye-open'
    default_options = { title: t('helpers.show'), class: 'btn', icon_class: icon_class }
    iconed_link_to nil, url, default_options.deep_merge(options)
  end

  def link_to_edit(url, options = {})
    icon_class = options.delete(:icon_class) || 'icon-edit'
    default_options = { title: t('helpers.edit'), class: 'btn', icon_class: icon_class }
    iconed_link_to nil, url, default_options.deep_merge(options)
  end

  def link_to_destroy(url, options = {})
    icon_class = options.delete(:icon_class) || 'icon-trash'
    default_options = { method: :delete, data: { confirm: t('helpers.are_you_sure') }, title: t('helpers.destroy'), class: 'btn', icon_class: icon_class}
    iconed_link_to nil, url, default_options.deep_merge(options)
  end
end
