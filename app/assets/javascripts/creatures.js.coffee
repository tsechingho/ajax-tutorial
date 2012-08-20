$ ->
  $('#creature-list')
    .on 'ajax:success', 'a.modal-open', (event, data, status, xhr) ->
      modal = $($(this).attr('data-target'))
      modal.html(data)
      $.modal.enableChosen()
    .on 'ajax:error', '.a.modal-open', (event, xhr, status, error) ->
      modal = $($(this).attr('data-target'))
      $.modal.showErrorModal(status, error, modal)

  $('#creature-modal')
    .on 'ajax:success', '.simple_form', (event, data, status, xhr) ->
      modal = $(this).parent()
      $.modal.appendFeedback(modal, data)
      if modal.find('.feedback .alert-error').size() > 0
        $.modal.replaceFeedback(modal)
        return true
      table_id = '#creature-list'
      $.modal.replaceTable(table_id, modal)
    .on 'ajax:error', '.simple_form', (event, xhr, status, error) ->
      modal = $('#creature-modal')
      $.modal.showErrorModal(status, error, modal)

