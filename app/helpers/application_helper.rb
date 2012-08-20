module ApplicationHelper
  def render_list(list = [], options = {})
    options, list = list, [] if list.is_a? Hash
    yield list if block_given?
    items = ''.html_safe
    list.each_with_index do |item, index|
      if item.is_a? Array
        item_options = item.pop
        item_content = item.join('').html_safe
      else
        item_options = {}
        item_content = item
      end

      item_class = []
      item_class << 'first' if index == 0
      item_class << 'last' if index == (list.length - 1)
      link = item_content.match(/href=(["'])(.*?)(\1)/)[2] rescue nil
      item_class << 'current active' if link and current_page?(link)
      item_class << item_options.delete(:class) if item_options[:class]

      li_class = item_class.empty? ? nil : item_class.join(' ')
      items << content_tag(:li, item_content, item_options.merge(class: li_class) )
    end
    content_tag(:ul, items, options)
  end
end
