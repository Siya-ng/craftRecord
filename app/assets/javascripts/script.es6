$(document).on('turbolinks:load',

function() {
 const $incompletedStep = $(".incompletedStep")
 const $completedStep = $(".completedStep")

$incompletedStep.on("click", function() {
  var stepNumber = $(this)[0].innerText
  var stepId = $(this).parent().find('.stepId').val()
  $(this).removeClass()
  $(this).addClass("completedStep")

  $.ajax({
    url: `/steps/${stepId}`,
    type: 'PUT',
    success: function (result) {
    }
  })
})

$completedStep.on("click", function() {
  var stepNumber = $(this)[0].innerText
  var stepId = $(this).parent().find('.stepId').val()
  $(this).removeClass()
  $(this).addClass("incompletedStep")

  $.ajax({
    url: `/steps/${stepId}`,
    type: 'PUT',
    success: function (result) {
    }
  })
})






})
