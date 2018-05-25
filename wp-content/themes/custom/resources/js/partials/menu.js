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
// jQuery( document ).ready( function(){
//
//     var links = jQuery( '.nav li a' );
//     animateScroll( links[ 1 ] );
//     animateScroll( links[ 3 ] );
//     animateScroll( links[ 5 ] );
//
//  
//
//     jQuery( document ).on( 'click', '.colapse-icon', function () {
//         jQuery( '.side-menu' ).toggleClass( 'open' );
//         jQuery( '.content-wrap' ).toggleClass( 'extended' );
//     } )
// });