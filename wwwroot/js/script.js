// Show and hide the sidebar menu
$(document).on("click", "#aside-menu-list", function(e){
    e.stopPropagation();
    $('#aside-menu').toggleClass('show');
});
// close the menu on html click
$(document).on("click", "html", function(e){
    $('#aside-menu').removeClass('show');
});
// close the menu on body click
$(document).on("click", "body", function(e){
    $('#aside-menu').removeClass('show');
});
