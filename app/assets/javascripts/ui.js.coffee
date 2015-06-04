$ ->
  $('.timer').addClass 'stretching'
  $('.tweet-block').each (i) ->
    $(this).delay(i++ * 90).fadeTo 1000, 1
