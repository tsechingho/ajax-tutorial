$ ->
  #### namespace ####

  $.modal ||= {}

  #### modal ####
  $.modal.showErrorModal = (status, error, modal = $(this)) ->
    modal.html($('#error-modal').html())
         .find('.modal-header h3').html(status).end()
         .children('.modal-body').html(error || 'No Connection!')

  $.modal.appendFeedback = (modal, data) ->
    $('<div>').addClass('feedback hide').html(data).appendTo(modal)

  $.modal.replaceFeedback = (modal) ->
    modal.html(modal.children('.feedback').html())
    $.modal.enableChosen()

  $.modal.replaceTable = (table_id, modal = $(this)) ->
    feedback_table = modal.find('.table')
    table = $(table_id).find('.table')
    table.html(feedback_table.html())
    modal.find('.feedback').remove().end()
         .modal('hide')
    table.effect('shake')
    return true

  $.modal.enableChosen = () ->
    $('.chzn-select').chosen
      allow_single_deselect: true
      no_results_text: 'No results matched'

