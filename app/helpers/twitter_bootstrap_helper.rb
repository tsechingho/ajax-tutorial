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

  def link_to_open_modal(text, url, modal_id, options = {})
    default_options = { remote: true, data: { target: modal_id, toggle: 'modal', type: 'html' }, class: 'modal-open' }
    iconed_link_to text, url, default_options.deep_merge(options)
  end

  def link_to_edit_modal(url, modal_id)
    default_options = { remote: true, data: { target: modal_id, toggle: 'modal', type: 'html' }, class: 'btn modal-open' }
    link_to_edit url, default_options
  end

  def iconed_link_to_add_association(text, *args)
    args << {} if args.size < 2
    icon_class = args.last.delete(:icon_class) || 'icon-plus'
    default_options = { title: t('helpers.add'), class: 'btn' }
    args.last.deep_merge! default_options
    link_to_add_association *args do
      content_tag(:i, nil, class: icon_class) << ' ' << text
    end
  end

  def iconed_link_to_remove_association(text, *args)
    args << {} if args.size < 2
    icon_class = args.last.delete(:icon_class) || 'icon-remove'
    default_options = { title: t('helpers.remove'), class: 'btn' }
    args.last.deep_merge! default_options
    link_to_remove_association *args do
      content_tag(:i, nil, class: icon_class) << ' ' << text
    end
  end
end
