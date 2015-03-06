# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("img.lazy").lazyload
    effect: "fadeIn"
  return

$(document).ready ->
  console.log("document is ready bro")
  #Check to see if the window is top if not then display button
  $(window).scroll ->
    if $(this).scrollTop() > 100
      $("#returnToTop").fadeIn()
    else
      $("#returnToTop").fadeOut()
    return
    
  #Click event to scroll to top
  $("#returnToTop").click (e) ->
    e.preventDefault();
    $("html, body").animate 
      scrollTop: 0
      , 300
    false

  return