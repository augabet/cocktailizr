# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#cocktail_ingredient_tokens').tokenInput '/ingredients.json',
  theme: 'facebook'
  prePopulate: $('#cocktail_ingredient_tokens').data('load')
