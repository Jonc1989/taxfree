/**
 * Created by Admin on 11.11.2017..
 */


function animateScroll( link ){

    jQuery( link ).click(function(e) {
        e.preventDefault();

        var id = jQuery(this).attr("href");

        var full = window.location.origin + window.location.pathname.slice(0, -1);

        if( domain == full || domain + enLocale == window.location.href || domain + ruLocale == window.location.href){
            var verticalOffset = jQuery(id).offset().top;

            jQuery("html, body").animate({
                    scrollTop: verticalOffset
                },
                1500,
                function(){})
        }else{
            window.location.href = domain + '/' + id;
        }
    });

}

var lastScrollTop = 0;
var stickyNav = function(){

    var scrollTop = $(window).scrollTop();

    if (scrollTop > lastScrollTop || scrollTop < 30){
        // downscroll code
        $('.menu-container').removeClass('sticky');
        //$('.navbar-placeholder').removeClass('navbar-active');
    } else {
        // upscroll code
        $('.menu-container').addClass('sticky');
        //$('.navbar-placeholder').addClass('navbar-active');
    }
    lastScrollTop = scrollTop;

};

get_team_members = function ( more ) {

    if(more){
        $('.team-member').slice(4).slideToggle( 400 );
        $('.more-btn').removeClass('more')
        equalheight('.team-member');
    }else{
        $('.team-member').slice(4).slideToggle( 400 );
        $('.more-btn')
          .addClass('more')
    }
};

jQuery( document ).ready( function(){

    var scene = document.getElementById('scene');
    var parallax = new Parallax(scene);

    stickyNav();

    $(window).scroll(function() {
        stickyNav();
    });

    var links = jQuery( '.nav li a' );
    animateScroll( links[ 0 ] );
    animateScroll( links[ 1 ] );
    animateScroll( links[ 2 ] );
    animateScroll( links[ 3 ] );
    //
    //
    //
    // jQuery( document ).on( 'click', '.colapse-icon', function () {
    //     jQuery( '.side-menu' ).toggleClass( 'open' );
    //     jQuery( '.content-wrap' ).toggleClass( 'extended' );
    // } )

    
    $(document).ready(function () {

        $(document).on('click', '.more-btn', function () {
            var more = $(this).hasClass('more');
            get_team_members(more);
        });
    });
});