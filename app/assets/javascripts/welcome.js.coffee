# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("img.lazy").lazyload
    effect: "fadeIn"
  return

$(document).ready ->
  #Check to see if the window is top if not then display button
  collapsed = false;
  
  $(window).scroll ->
    if $(this).scrollTop() > 100
      $("#returnToTop").fadeIn()
    else
      $("#returnToTop").fadeOut()
    return
    
  #Click event to scroll to top
  $("#returnToTop").click (e) ->
    e.preventDefault();
    console.log("top click!")
    $("html, body").animate 
      scrollTop: 0
      , 300
    false

  return