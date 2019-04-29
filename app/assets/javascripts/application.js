// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require turbolinks
//= require jquery.slick
//= require cocoon
//= require bootstrap-fileinput
//= require popper
//= require bootstrap-sprockets
//= require_tree .
$(document).on('turbolinks:load', function () {
	$('[data-toggle="tooltip"]').tooltip()
});

$(document).on('turbolinks:load', function() {
	$('.slider').slick({
		autoplaySpeed: 0,
		speed: 4000,
		swipe: false,
		cssEase: 'linear',
		pauseOnFocus: false,
		pauseOnHover: false,
		pauseOnDotsHover: false,
		arrows: false,
		centerMode: true,
		autoplay: true,
		infinite: true,
		slidesToShow: 5,
		slidesToScroll: 1,
		accessibility: true,
		responsive: [ //レスポンシブの設定
			{
				breakpoint: 2561, //ブレークポイント1の値
				settings: { //ブレークポイント1のオプション
				autoplaySpeed: 0,
				speed: 4000,
				swipe: false,
				cssEase: 'linear',
				pauseOnFocus: false,
				pauseOnHover: false,
				pauseOnDotsHover: false,
				arrows: false,
				centerMode: true,
				autoplay: true,
				infinite: true,
				slidesToShow: 9,
				slidesToScroll: 1,
				accessibility: true,
				}
			},
			{
				breakpoint: 2200, //ブレークポイント2の値
				settings: { //ブレークポイント2のオプション
				autoplaySpeed: 0,
				speed: 4000,
				swipe: false,
				cssEase: 'linear',
				pauseOnFocus: false,
				pauseOnHover: false,
				pauseOnDotsHover: false,
				arrows: false,
				centerMode: true,
				autoplay: true,
				infinite: true,
				slidesToShow: 7,
				slidesToScroll: 1,
				accessibility: true,
				}
			},
			{
				breakpoint: 1760, //ブレークポイント2の値
				settings: { //ブレークポイント2のオプション
				autoplaySpeed: 0,
				speed: 4000,
				swipe: false,
				cssEase: 'linear',
				pauseOnFocus: false,
				pauseOnHover: false,
				pauseOnDotsHover: false,
				arrows: false,
				centerMode: true,
				autoplay: true,
				infinite: true,
				slidesToShow: 5,
				slidesToScroll: 1,
				accessibility: true,
				}
			},
			{
				breakpoint: 1367, //ブレークポイント2の値
				settings: { //ブレークポイント2のオプション
				autoplaySpeed: 0,
				speed: 4000,
				swipe: false,
				cssEase: 'linear',
				pauseOnFocus: false,
				pauseOnHover: false,
				pauseOnDotsHover: false,
				arrows: false,
				centerMode: true,
				autoplay: true,
				infinite: true,
				slidesToShow: 4,
				slidesToScroll: 1,
				accessibility: true,
				}
			},
			{
				breakpoint: 1115, //ブレークポイント2の値
				settings: { //ブレークポイント2のオプション
				autoplaySpeed: 0,
				speed: 4000,
				swipe: false,
				cssEase: 'linear',
				pauseOnFocus: false,
				pauseOnHover: false,
				pauseOnDotsHover: false,
				arrows: false,
				centerMode: true,
				autoplay: true,
				infinite: true,
				slidesToShow: 3,
				slidesToScroll: 1,
				accessibility: true,
				}
			},
			{
				breakpoint: 400, //ブレークポイント2の値
				settings: { //ブレークポイント2のオプション
				autoplaySpeed: 0,
				speed: 4000,
				swipe: false,
				cssEase: 'linear',
				pauseOnFocus: false,
				pauseOnHover: false,
				pauseOnDotsHover: false,
				arrows: false,
				centerMode: true,
				autoplay: true,
				infinite: true,
				slidesToShow: 1,
				slidesToScroll: 1,
				accessibility: true,
				}
			},
			{
				breakpoint: 400, //ブレークポイント2の値
				settings: "unslick" //slickを使わない
			}]
	});
});

// $(document).on('turbolinks:load',function(){
// $(".header").css("display","none");
// });

// $(document).on('turbolinks:load',function(){
// $(".header").delay(500).slideDown("slow");
// });

$(document).on('turbolinks:load', function(){
	$fileField = $('#file')

	// 選択された画像を取得し表示
	$($fileField).on('change', $fileField, function(e) {
		file = e.target.files[0]
		reader = new FileReader(),
		$preview = $("#img_field");

		reader.onload = (function(file) {
		return function(e) {
		$preview.empty();
		$preview.append($('<img>').attr({
			src: e.target.result,
			width: "100%",
			class: "preview",
			title: file.name
		}));
		};
		})(file);
		reader.readAsDataURL(file);
	});
});

$(document).on('turbolinks:load', function(){
	$fileField = $('#file1')

	// 選択された画像を取得し表示
	$($fileField).on('change', $fileField, function(e) {
		file = e.target.files[0]
		reader = new FileReader(),
		$preview = $("#img_field1");

		reader.onload = (function(file) {
		return function(e) {
		$preview.empty();
		$preview.append($('<img>').attr({
			src: e.target.result,
			width: "100%",
			class: "preview",
			title: file.name
		}));
		};
		})(file);
		reader.readAsDataURL(file);
	});
});