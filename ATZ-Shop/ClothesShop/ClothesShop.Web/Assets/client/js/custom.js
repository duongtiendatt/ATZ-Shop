﻿/*=========================================================
Author       : Bestwebcreator.
Template Name: ATZ Shop - Online Shopping Store HTML Template
Version      : 1.1
==============================================================*/

(function ($) {
    'use strict';

    /*===================================*
    01. POPUP JS
    *===================================*/
    $(window).on('load', function () {
        $('#exampleModal').modal('show');
    });

    /*===================================*
    02. DATA IMAGE SRC JS
    *===================================*/
    $(".background_bg").each(function () {
        var attr = $(this).attr('data-img-src');
        if (typeof attr !== typeof undefined && attr !== false) {
            $(this).css('background', 'url(' + attr + ') center center/cover');
        }
    });

    /*===================================*
    03. LOGIN POPUP JS
    *===================================*/
    $('.open-popup-link').magnificPopup({
        type: 'inline',
        midClick: true,
        mainClass: 'mfp-fade'
    });

    $('.open-popup-link-login').click(function () {

    });

    /*===================================*
    04. MENU JS
    *===================================*/
    //Main navigation scroll spy for shadow
    if ($(window).width() >= 992) {
        $(window).on('scroll', function () {
            var scroll = $(window).scrollTop();
            if (scroll >= 160) {
                $('.header-btm').addClass('nav-fixed');
            } else {
                $('.header-btm').removeClass('nav-fixed');
            }

        });
    }
    //Show Hide dropdown-menu Main navigation 
    $(document).ready(function () {
        $('.dropdown-menu a.dropdown-toggler').on('click', function (e) {
            var $el = $(this);
            var $parent = $(this).offsetParent(".dropdown-menu");
            if (!$(this).next().hasClass('show')) {
                $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
            }
            var $subMenu = $(this).next(".dropdown-menu");
            $subMenu.toggleClass('show');

            $(this).parent("li").toggleClass('show');

            $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
                $('.dropdown-menu .show').removeClass("show");
            });

            return false;
        });
    });

    /*===================================*
    05. SEARCH JS
    *===================================*/

    $(document).ready(function () {
        $('#search').on("click", (function (e) {
            $(".header-form").toggleClass("search-open");
            e.stopPropagation()
        }));
    })


    /*===================================*
    06. PRODUCT + SALLER SLIDER JS
    *===================================*/
    $(document).ready(function () {
        $('.products-slider3').owlCarousel({
            loop: false,
            margin: 30,
            nav: true,
            dots: false,
            thumbs: false,
            responsiveClass: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            responsive: {
                0: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                1000: {
                    items: 3,
                }
            }
        })
    });
    $('.products-slider4').each(function () {
        var $carousel = $(this);
        $carousel.owlCarousel({
            loop: $carousel.data("loop"),
            margin: $carousel.data("margin"),
            dots: $carousel.data("dots"),
            autoHeight: true,
            rewind: $carousel.data("rewind"),
            autoplay: $carousel.data("autoplay"),
            nav: $carousel.data("nav"),
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            autoplayTimeout: $carousel.data("autoplay-timeout"),
            responsive: {
                0: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                1000: {
                    items: 4,
                }
            }
        });
    });
    $('.testimonial_slider').each(function () {
        var $carousel = $(this);
        $carousel.owlCarousel({
            loop: $carousel.data("loop"),
            margin: $carousel.data("margin"),
            dots: $carousel.data("dots"),
            autoHeight: true,
            rewind: $carousel.data("rewind"),
            autoplay: $carousel.data("autoplay"),
            nav: $carousel.data("nav"),
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            autoplayTimeout: $carousel.data("autoplay-timeout"),
            responsive: {
                0: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                1000: {
                    items: 2,
                }
            }
        });
    });
    /*===================================*
    08. SLIDER JS
    *===================================*/
    $(window).on('load', function () {
        $('.carousel_slide1').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                dots: $carousel.data("dots"),
                margin: $carousel.data("margin"),
                loop: $carousel.data("loop"),
                items: 1,
                autoHeight: true,
                nav: $carousel.data("nav"),
                navText: ['<i class="ion-ios-arrow-thin-left"></i>', '<i class="ion-ios-arrow-thin-right"></i>'],
                autoplay: $carousel.data("autoplay"),
                animateIn: $carousel.data("animate-in"),
                animateOut: $carousel.data("animate-out"),
                autoplayTimeout: $carousel.data("autoplay-timeout"),
            });
        });

        $('.carousel_slide2').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                loop: $carousel.data("loop"),
                margin: $carousel.data("margin"),
                dots: $carousel.data("dots"),
                autoHeight: true,
                rewind: $carousel.data("rewind"),
                autoplay: $carousel.data("autoplay"),
                nav: $carousel.data("nav"),
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                autoplayTimeout: $carousel.data("autoplay-timeout"),
                responsive: {
                    0: {
                        items: 1,
                    },
                    380: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    1000: {
                        items: 2,
                    },
                    1199: {
                        items: 2
                    }
                }
            });
        });

        $('.carousel_slide3').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                loop: $carousel.data("loop"),
                margin: $carousel.data("margin"),
                dots: $carousel.data("dots"),
                autoHeight: false,
                lazyLoad: true,
                rewind: $carousel.data("rewind"),
                autoplay: $carousel.data("autoplay"),
                nav: $carousel.data("nav"),
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                autoplayTimeout: $carousel.data("autoplay-timeout"),
                responsive: {
                    0: {
                        items: 1,
                    },
                    380: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    1000: {
                        items: 3,
                    },
                    1199: {
                        items: 3
                    }
                }
            });
        });

        $('.carousel_slide4').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                dots: $carousel.data("dots"),
                loop: $carousel.data("loop"),
                margin: $carousel.data("margin"),
                autoHeight: true,
                rewind: $carousel.data("rewind"),
                autoplay: $carousel.data("autoplay"),
                nav: $carousel.data("nav"),
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                autoplayTimeout: $carousel.data("autoplay-timeout"),
                responsive: {
                    0: {
                        items: 1,
                    },
                    380: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    1000: {
                        items: 3,
                    },
                    1199: {
                        items: 4
                    }
                }
            });
        });

        $('.carousel_slide5').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                dots: $carousel.data("dots"),
                loop: $carousel.data("loop"),
                margin: $carousel.data("margin"),
                autoHeight: true,
                rewind: $carousel.data("rewind"),
                autoplay: $carousel.data("autoplay"),
                nav: $carousel.data("nav"),
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                autoplayTimeout: $carousel.data("autoplay-timeout"),
                responsive: {
                    0: {
                        items: 1,
                    },
                    380: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    768: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    },
                    1199: {
                        items: 5
                    }
                }
            });
        });

        $('.carousel_slide6').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                dots: $carousel.data("dots"),
                loop: $carousel.data("loop"),
                margin: $carousel.data("margin"),
                autoHeight: true,
                rewind: $carousel.data("rewind"),
                autoplay: $carousel.data("autoplay"),
                nav: $carousel.data("nav"),
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                autoplayTimeout: $carousel.data("autoplay-timeout"),
                responsive: {
                    0: {
                        items: 2,
                    },
                    380: {
                        items: 2,
                    },
                    576: {
                        items: 2,
                    },
                    768: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    },
                    1199: {
                        items: 6
                    }
                }
            });
        });

        $('.carousel_slide7').each(function () {
            var $carousel = $(this);
            $carousel.owlCarousel({
                dots: $carousel.data("dots"),
                loop: $carousel.data("loop"),
                margin: $carousel.data("margin"),
                autoHeight: true,
                rewind: $carousel.data("rewind"),
                autoplay: $carousel.data("autoplay"),
                nav: $carousel.data("nav"),
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                autoplayTimeout: $carousel.data("autoplay-timeout"),
                responsive: {
                    0: {
                        items: 1,
                    },
                    380: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    768: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    },
                    1199: {
                        items: 7
                    }
                }
            });
        });

    });

    /*===================================*
    07. QUICKVIEW POPUP + ZOOM IMAGE + PRODUCT SLIDER JS
    *===================================*/
    var image = $('#product_img');
    var zoomConfig = {};
    var zoomActive = false;

    image.on('mousemove', function () {
        zoomActive = !zoomActive;
        if (zoomActive) {
            if ($(window).width() >= 768) {
                var firstImgHeight = $("#product_img").height();
                var divWidth = $(".quickview-product-detail").width();
                $("#product_img").elevateZoom({
                    cursor: "crosshair",
                    easing: true,
                    gallery: 'pr_item_gallery',
                    zoomWindowOffetx: 30,
                    zoomWindowWidth: divWidth,
                    zoomWindowHeight: firstImgHeight,
                    borderSize: 0,
                    galleryActiveClass: "active"
                });
            }
            else {
                $("#product_img").elevateZoom({
                    cursor: "crosshair",
                    zoomType: "inner",
                });
            }
        }
        else {
            $.removeData(image, 'elevateZoom');//remove zoom instance from image
            $('.zoomContainer').remove();// remove zoom container from DOM
        }
    });

    /*QUICKVIEW POPUP JS*/
    $('.quickview-popup-link').magnificPopup({
        type: 'inline',
        alignTop: false,
        overflowY: 'scroll',
        midClick: true,
        callbacks: {
            open: function () {
                // Will fire when this exact popup is opened
                if ($(window).width() >= 768) {
                    var firstImgHeight = $("#product_img").height();
                    var divWidth = $(".quickview-product-detail").width();
                    $("#product_img").elevateZoom({
                        cursor: "crosshair",
                        easing: true,
                        gallery: 'pr_item_gallery',
                        zoomWindowOffetx: 30,
                        zoomWindowWidth: divWidth,
                        zoomWindowHeight: firstImgHeight,
                        borderSize: 0,
                        galleryActiveClass: "active"
                    });
                }
                else {
                    $("#product_img").elevateZoom({
                        cursor: "crosshair",
                        zoomType: "inner",
                        gallery: 'pr_item_gallery',
                        galleryActiveClass: "active"
                    });
                }
            }
        }
    });

    /*zoomContainer REMOVE*/
    $('body').on("click", (function (e) {
        $('.zoomContainer').remove();
    }));



    /*PRODUCT THUMB GALLERY*/
    var owl = $('.product_gallery_item');
    owl.owlCarousel({
        loop: false,
        items: 4,
        dots: false,
        margin: 10,
        nav: true,
        navText: ['<i class="ion-ios-arrow-back"></i>', '<i class="ion-ios-arrow-forward"></i>'],
    });

    /*IMAGE GALLERY POPUP*/
    $('.image_popup').on('click', function () {
        $(this).find('.link_container').magnificPopup('open');
    });
    $('.link_container').each(function () {
        $(this).magnificPopup({
            delegate: '.image_popup',
            type: 'image',
            gallery: {
                enabled: true
            }
        });
    });

    /*===================================*
    09. PRICE FILTER JS
    *===================================*/

    $("#slider-range").slider({
        range: true,
        min: 10,
        max: 500,
        values: [10, 500],
        slide: function (event, ui) {
            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
        }
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

    /*===================================*
    10. SELECT2 JS
    *===================================*/
    $(".js-example-placeholder-single").select2({
        allowClear: true
    });

    /*===================================*
    11. COUNTER JS
    *===================================*/
    $('.counter').countUp();

    /*===================================*
    12. ANIMATION JS
    *===================================*/
    $(function () {

        function ckScrollInit(items, trigger) {
            items.each(function () {
                var ckElement = $(this),
                    AnimationClass = ckElement.attr('data-animation'),
                    AnimationDelay = ckElement.attr('data-animation-delay');

                ckElement.css({
                    '-webkit-animation-delay': AnimationDelay,
                    '-moz-animation-delay': AnimationDelay,
                    'animation-delay': AnimationDelay
                });

                var ckTrigger = (trigger) ? trigger : ckElement;

                ckTrigger.waypoint(function () {
                    ckElement.addClass("animated").css("visibility", "visible");
                    ckElement.addClass('animated').addClass(AnimationClass);
                }, {
                        triggerOnce: true,
                        offset: '90%'
                    });
            });
        }

        ckScrollInit($('.animation'));
        ckScrollInit($('.staggered-animation'), $('.staggered-animation-wrap'));

    });

    /*===================================*
    13. SCROLLUP JS
    *===================================*/
    $(window).scroll(function () {
        if ($(this).scrollTop() > 160) {
            $('.scrollup').fadeIn();
        } else {
            $('.scrollup').fadeOut();
        }
    });

    $(".scrollup").on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }, 600);
        return false;
    });
    /*===================================*
    14. QUNTITY JS
    *===================================*/
    $('.plus').on("click", function (e) {
        if ($(this).prev().val()) {
            $(this).prev().val(+$(this).prev().val() + 1);
        }
    });
    $('.minus').on("click", function (e) {
        if ($(this).next().val() > 1) {
            if ($(this).next().val() > 1) $(this).next().val(+$(this).next().val() - 1);
        }
    });

    /*Cart Page Payment option*/
    $('[name="payment_option"]').on('click', function () {

        var $value = $(this).attr('value');

        $('.payment-text').slideUp();
        $('[data-method="' + $value + '"]').slideDown();

    })

    /*===================================*
    15. CONTACT FORM JS
    *===================================*/
    function removeBoxContact() {
        $("#first-name").val("");
        $("#email").val("");
        $("#description").val("");
    }

    

    $("#submitButton").on("click", function (event) {
        var contact = {
            TenKH: $("#first-name").val(),
            Email: $("#email").val(),
            NoiDung: $("#description").val()
        };
        if (validateEmail(contact.Email) && contact.Email !== "" && contact.TenKH !== "" && contact.NoiDung !== "") {
            event.preventDefault();
            $.ajax({
                type: "post",
                url: "/Contact/GuiLienHe",
                data: { lienHeDTO: contact },
                success: function (response) {
                    if (response) {
                        removeBoxContact();
                        $.notify("Gửi liên hệ thành công!", "success");
                    }
                    else {
                        $.notify("Gửi liên hệ thất bại!", "error");
                    }
                }
            });
        }

    });

    /*===================================*
    16. GOOGLE MAP JS
    *===================================*/
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 12,

            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(21.053374, 105.734042), // Hà Nội

            // How you would like to style the map. 
            // This is where you would paste any style found on Snazzy Maps.
            styles: [{ "featureType": "all", "elementType": "geometry.fill", "stylers": [{ "weight": "2.00" }] }, { "featureType": "all", "elementType": "geometry.stroke", "stylers": [{ "color": "#9c9c9c" }] }, { "featureType": "all", "elementType": "labels.text", "stylers": [{ "visibility": "on" }] }, { "featureType": "landscape", "elementType": "all", "stylers": [{ "color": "#f2f2f2" }] }, { "featureType": "landscape", "elementType": "geometry.fill", "stylers": [{ "color": "#ffffff" }] }, { "featureType": "landscape.man_made", "elementType": "geometry.fill", "stylers": [{ "color": "#ffffff" }] }, { "featureType": "poi", "elementType": "all", "stylers": [{ "visibility": "off" }] }, { "featureType": "road", "elementType": "all", "stylers": [{ "saturation": -100 }, { "lightness": 45 }] }, { "featureType": "road", "elementType": "geometry.fill", "stylers": [{ "color": "#eeeeee" }] }, { "featureType": "road", "elementType": "labels.text.fill", "stylers": [{ "color": "#7b7b7b" }] }, { "featureType": "road", "elementType": "labels.text.stroke", "stylers": [{ "color": "#ffffff" }] }, { "featureType": "road.highway", "elementType": "all", "stylers": [{ "visibility": "simplified" }] }, { "featureType": "road.arterial", "elementType": "labels.icon", "stylers": [{ "visibility": "off" }] }, { "featureType": "transit", "elementType": "all", "stylers": [{ "visibility": "off" }] }, { "featureType": "water", "elementType": "all", "stylers": [{ "color": "#46bcec" }, { "visibility": "on" }] }, { "featureType": "water", "elementType": "geometry.fill", "stylers": [{ "color": "#c8d7d4" }] }, { "featureType": "water", "elementType": "labels.text.fill", "stylers": [{ "color": "#070707" }] }, { "featureType": "water", "elementType": "labels.text.stroke", "stylers": [{ "color": "#ffffff" }] }]
        };

        // Get the HTML DOM element that will contain your map 
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('map');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(21.053374, 105.734042),
            map: map,
            title: 'Snazzy!'
        });
    }

    /*===================================*
    17. LIST GRID JS
    *===================================*/
    var listButton = $('.list-view');
    var gridButton = $('.grid-view');
    var wrapper = $('.list_grid_container');

    listButton.on('click', function () {

        gridButton.removeClass('on');
        listButton.addClass('on');
        wrapper.removeClass('grid').addClass('list');

    });

    gridButton.on('click', function () {

        listButton.removeClass('on');
        gridButton.addClass('on');
        wrapper.removeClass('list').addClass('grid');

    });

    /*===================================*
    18. SIDE MENU JS
    *===================================*/

    $(document).ready(function () {
        //$("#sidebar, #mega-dropdown-menu").mCustomScrollbar({
        //	theme: "minimal"
        //});

        $('#dismiss, .header-overlay').on('click', function () {

            $('#sidebar').removeClass('active');

            $('.header-overlay,body').removeClass('active');

        });

        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').addClass('active');
            $('.header-overlay,body').addClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
    });

    /*===================================*
    18. TOOLTIP JS
    *===================================*/
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

    /*===================================*
    22. IMAGE POPUP JS
    *===================================*/

    $(document).ready(function () {
        $('.popup-gallery').magnificPopup({
            delegate: 'a',
            type: 'image',
            tLoading: 'Loading image #%curr%...',
            mainClass: 'mfp-img-mobile',
            gallery: {
                enabled: true,
                navigateByImgClick: true,
                preload: [0, 1]
            },
            image: {
                tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
            }
        });
    });

    /*===================================*
    23. INSTAGRAM SLIDER JS
    *===================================*/
    $(document).ready(function () {
        $('.insta-slider').owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            dots: false,
            autoplay: true,
            autoplayHoverPause: true,
            autoplayTimeout: 3000,
            smartSpeed: 3000,
            animateIn: 'linear',
            animateOut: 'linear',
            thumbs: false,
            responsiveClass: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            responsive: {
                0: {

                    items: 2,

                },
                380: {
                    items: 3,
                },
                576: {
                    items: 4,
                },
                991: {

                    items: 5,

                },
                1200: {

                    items: 6,

                },
                1300: {

                    items: 9,

                },
            }
        })
    });

    $(document).ready(function () {
        $('.insta-slider-2').owlCarousel({
            loop: true,
            rtl: true,
            margin: 0,
            nav: false,
            dots: false,
            autoplay: true,
            autoplayHoverPause: true,
            autoplayTimeout: 3000,
            smartSpeed: 3000,
            animateIn: 'linear',
            animateOut: 'linear',
            thumbs: false,
            responsiveClass: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            responsive: {
                0: {

                    items: 2,

                },
                380: {
                    items: 3,
                },
                576: {
                    items: 4,
                },
                991: {

                    items: 5,

                },
                1200: {

                    items: 6,

                },
                1300: {

                    items: 9,

                },
            }
        })
    });

    /*===================================*
    24. SLIDER WIDTH JS
    *===================================*/

    $(document).ready(function () {
        $(".categories-btn").click(function () {
            $("#mega-dropdown-menu").toggleClass("down");
        });
        if ($(window).width() >= 768) {
            $(".categories-btn").click(function () {
                $(".slider-width").toggleClass("width-half");
            });
        }
    });

})(jQuery);

/*===================================*
25. SCROLLDOWN JS
*===================================*/
$(document).ready(function () {
    $(".mouse-down").click(function () {
        $('html, body').animate({
            scrollTop: $(".categories-section").offset().top
        }, 600);
    });
});

/*===================================*
26.COUNTDOWN JS
*===================================*/
$('.countdown-time').each(function () {
    var endTime = $(this).data('time');
    $(this).countdown(endTime, function (tm) {
        $(this).html(tm.strftime('<span class="countdown-box"><span class="countdown days">%D </span><span class="cd-text">Days</span></span><span class="countdown-box"><span class="countdown hours">%H</span><span class="cd-text">Hours</span></span><span class="countdown-box"><span class="countdown minutes">%M</span><span class="cd-text">Minutes</span></span><span class="countdown-box"><span class="countdown seconds">%S</span><span class="cd-text">Seconds</span></span>'));
    });
});
/*===================================*
27.SEARCH OPEN JS
*===================================*/

$(document).ready(function () {
    $(".search-toggle").click(function () {
        $(".search-section").toggleClass("open");
    });
    $(".closs-toggle").click(function () {
        $(".search-section").removeClass("open");
    });
});
$(document).on('keyup', function (evt) {
    if (evt.keyCode === 27 && $('.search-section').hasClass('open')) {
        console.log(evt.keyCode);
        $('.search-section').removeClass("open");
    }
});


/*===================================*
27.ACCORDION JS
*===================================*/

function getAccordion(element_id, screen) {
    $(window).resize();

    if ($(window).width() < screen) {
        var concat = '';
        obj_tabs = $(element_id + " li").toArray();
        obj_cont = $(".tab_con .tab-pane").toArray();
        jQuery.each(obj_tabs, function (n, val) {
            concat += '<div class="card">';
            concat += '<div class="card-header" id="heading' + n + '">';
            concat += '<h4 class="panel-title"><a id="predict' + n + '" role="button" data-toggle="collapse" data-parent="#tab-accordion" href="#collapse' + n + '" aria-expanded="false" aria-controls="collapse' + n + '">' + val.innerText + '</a></h4>';
            concat += '</div>';
            concat += '<div id="collapse' + n + '" class="collapse" role="tabpanel" aria-labelledby="heading' + n + '" data-parent="#tab-accordion">';
            concat += '<div class="panel-body">' + obj_cont[n].innerHTML + '</div>';
            concat += '</div>';
            concat += '</div>';
        });
        $("#tab-accordion").html(concat);
        $("#tab-accordion").find('.collapse:first').addClass("show");
        $("#tab-accordion").find('.panel-title a:first').attr("aria-expanded", "true");
        $(element_id).remove();
        $(".tab_con").remove();

        $('#tab-accordion').on('shown.bs.collapse', function (e) {
            var id = $(e.target).prev().find("[id]")[0].id;
            navigateToElement(id);
        });
    }
}

function navigateToElement(id) {
    $('html, body').animate({
        scrollTop: $("#" + id).offset().top
    }, 700);
};

$(document).ready(function () {
    getAccordion("#tab-list", 767);
});


/*Demo js*/
//$( window ).on( "load", function() {
//	document.onkeydown = function(e) {
//		if(e.keyCode == 123) {
//		 return false;
//		}
//		if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
//		 return false;
//		}
//		if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
//		 return false;
//		}
//		if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
//		 return false;
//		}

//		if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)){
//		 return false;
//		}      
//	 }

//	$("html").on("contextmenu",function(){
//		return false;
//	});
//});


// Xử lý chọn size hiển thị số lượng
$(".size-box button").click(function () {
    $(".size-box button").removeClass("size-active");
    $(this).addClass('size-active');

    var valSize = $(this)[0].getAttribute('value');
    var idProduct = $(this)[0].getAttribute('id-product');

    $.ajax({
        type: 'post',
        url: '/Product/NumberSize',
        data: { valSize: valSize, idProduct: idProduct },
        success: function (response) {
            $("#so-luong").html(response);
        }
    });

});


// Thêm giỏ hàng
$("#them-gio-hang").click(function () {
    var soLuong = $("#so-luong")[0].innerText;
    var valSize = $(".size-active")[0].getAttribute('value');
    var idSanPham = $(".size-active")[0].getAttribute('id-product');
    var quantity = $("#so-luong-sp").val();
    if (parseInt(soLuong) < parseInt(quantity)) {
        $.notify("Số lượng sản phẩm không đủ!", "error");
    }
    else {
        $.ajax({
            type: 'post',
            url: '/Cart/ThemGioHang',
            data: { quantity: quantity, valSize: valSize, idSanPham: idSanPham },
            success: function (response) {
                $.notify("Thêm giỏ hàng thành công!", "success");
                setTimeout(function () {
                    window.location.reload();
                }, 300);
            }
        });
    }
});

// thay đổi giỏ hảng
$("#update-cart").click(function () {
    var tr = $(".valTr");
    var cart = [];
    if (tr.length !== 0) {
        for (var i = 0; i < tr.length; i++) {
            var ChiTietDonHangDTO = {
                MaSanPham: $(".valTr #idSanPham")[i].value,
                MaSize: $(".valTr #idSize")[i].value,
                SoLuong: $(".valTr #so-luong")[i].value
            };
            cart.push(ChiTietDonHangDTO);
        }
        $.ajax({
            type: 'post',
            url: '/Cart/CapNhat',
            data: { cart: cart, type: 1 },
            success: function (response) {
                $.notify("Cập nhật giỏ hàng thành công!", "success");
                setTimeout(function () {
                    window.location.reload();
                }, 300);
            }
        });
    }
    else {
        $.ajax({
            type: 'post',
            url: '/Cart/CapNhat',
            data: { cart: cart, type: 0 },
            success: function (response) {
                $.notify("Giỏ hàng rỗng!", "success");
                setTimeout(function () {
                    window.location.reload();
                }, 300);
            }
        });
    }
});

// Xóa sản phẩm
$(".delete-sp").click(function () {
    var stt = $(this)[0].getAttribute('stt');
    $(".row-" + stt).remove();
});

// Đăng ký
$("#btn_register").click(function (event) {
    var user = $("#r_user").val();
    var pass = $("#r_pass").val();
    var conPass = $("#r_conPass").val();
    var name = $("#r_name").val();
    var email = $("#r_email").val();
    var phone = $("#r_phone").val();

    if (user !== "" && pass !== "" && conPass !== "" && name !== "" && validateEmail(email) && phone !== "") {
        event.preventDefault();
        if (pass !== conPass) {
            $.notify("Mật khẩu không khớp!", "error");
        }
        else {
            var model = {
                User: user,
                Password: pass,
                ConfirmPassword: conPass,
                UserName: name,
                Email: email,
                Phone: phone
            };
            $.ajax({
                type: 'post',
                url: '/Account/Register',
                data: { model: model },
                success: function (response) {
                    if (response) {
                        $.notify("Đăng ký thành công!", "success");
                        setTimeout(function () {
                            window.location.reload();
                        }, 300);
                    }
                    else {
                        $.notify("Đăng ký thất bại!", "error");
                    }
                }
            });
        }
    }
});

function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}