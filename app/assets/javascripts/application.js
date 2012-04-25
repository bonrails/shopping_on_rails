// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function(){
    $("ul.sub").hide();
    $("ul.sub_nav").hide();
    $("ul.categories li a" ).mouseover(function() {
        $("#"+this.title).slideDown('fast').show();


        $(this).parent().hover(function() {
                }, function(){
                    $(this).parent().find("ul.sub").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
                });
    });

    $("ul.sub li a" ).mouseover(function() {
        $("#"+this.title).slideDown('fast').show();
        $(this).parent().hover(function() {
            }, function(){
                 $(this).parent().find("ul.sub_nav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
            });




    });




   /*

    $("ul.categories li " ).mouseout(function() {
        $($(this).children()[1]).hide() ;
    });
    */
});
