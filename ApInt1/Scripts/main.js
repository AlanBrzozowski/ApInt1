function scrollToAnchor(aid){
    var aTag = $(aid);
    $('html,body').animate({
          scrollTop: aTag.offset().top
        }, 600);
}

$( document ).ready(function() { 

	$("#down-about").click(function(){
        scrollToAnchor($("section.about-us"));
        return false;
    });
    $("#down-search").click(function(){
        scrollToAnchor($("section.contact"));
        return false;
    });
    $("#down-footer").click(function(){
        scrollToAnchor($("footer"));
        return false;
    });

});