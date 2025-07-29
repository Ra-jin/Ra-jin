(function($){
	$(document).ready(function(){

		// Common - Start
		// (function(){
		// 	$(window).on('load', function(){
		// 		$('section').height($(window).height()-$('header').height() - 1); // border-bottom:1px
		// 	});
		// 	$(window).resize(function(){
		// 		$(window).trigger('load');
		// 	});
		// })();
		// Common - End

		// Popup - Start
		(function(){
			$.fn.popUp = function(popClass){
				return this.each(function(){
					var root = $(this);
					$(popClass).css({
						position: 'fixed',
						top: 50 + '%',
						left: 50 + '%',
						zIndex: 101,
						display: 'none'
					});
					root.on('click', function(e){
						e.preventDefault();
						$(document).dim();
						$(popClass).css({
							marginTop: -($(popClass).height()/2)+'px',
							marginLeft: -($(popClass).width()/2)+'px'
						});
						$(popClass).show();
					});
					$(popClass).find('.btnClose, .btnCancel').on('click', function(e){
						e.preventDefault();
						$('.dim').trigger('click');
						$(popClass).hide();
					});
					if(root.hasClass('popupLoad')){
						console.log(1);
					};
				});
			};
		})();
		(function(){
			$.fn.popUpLoad = function(popClass){
				return this.each(function(){
					var root = $(this);
					$(popClass).css({
						position: 'fixed',
						top: 50 + '%',
						left: 50 + '%',
						zIndex: 101,
						display: 'none'
					});
					$(window).on('load', function(e){
						e.preventDefault();
						$(document).dim();
						$(popClass).css({
							marginTop: -($(popClass).height()/2)+'px',
							marginLeft: -($(popClass).width()/2)+'px'
						});
						$(popClass).show();
					});
					$(popClass).find('.btnClose, .btnCancel').on('click', function(e){
						e.preventDefault();
						$('.dim').trigger('click');
						$(popClass).hide();
					});
				});
			};
		})();
		// Popup - End

		// Dim - Start
		(function(){
			$.fn.dim = function(){
				return this.each(function(){
					$('body').prepend('<div class="dim" />').addClass('on');
					$('.dim').css({
						position: 'absolute',
						zIndex: 100,
						left: 0,
						top: 0,
						width: '100%',
						height: $(document).height(),
						background: '#000',
						opacity: 0.8,
						cursor: 'pointer'
					});
				});
			};
			$(document).on('click', '.dim',function(){
				$('.dim').remove();
				$('.popupWrap .btnClose').trigger('click');
			});
		})();
		// Dim - End

		// Placeholder - Start
		(function(){
			$.fn.ph = function(){
				return this.each(function(){
					var root = $(this);
					root.find('input, textarea').focusin(function(){
						$(this).closest(root).find('.ph').hide();
						$(this).parent().addClass('on');
					});
					root.find('input, textarea').focusout(function(){
						if($(this).val()){
							null;
						}else{
							$(this).closest(root).find('.ph').show();
						};
						$(this).parent().removeClass('on');
					});
					if($(this).find('input, textarea').val()){
						$(this).closest(root).find('.ph').hide();
					}else{
						$(this).closest(root).find('.ph').show();
					};
				});
			};
			$('.phBox, .phBoxTextarea').ph();
		})();
		// Placeholder - End

		// Tab - Start
		(function(){
			$.fn.tabCommon = function(){
				return this.each(function(){
					var root = $(this);
					var randomTab = Math.floor((Math.random() * root.find('.tabList li').length) + 1)-1;
					root.find('.tabList li a').on('click', function(e){
						if($(this).closest(root).hasClass('in') || $(this).closest(root).hasClass('random')){
							e.preventDefault();
							$(this).parent().siblings().removeClass('on');
							$(this).parent().addClass('on');
							$(this).closest(root).find('.tabCon .tabConList').eq($(this).parent().index()).siblings().removeClass('on');
							$(this).closest(root).find('.tabCon .tabConList').eq($(this).parent().index()).addClass('on');
						};
					});
					if(root.hasClass('random')){
						root.find('.tabList li').eq(randomTab).siblings().removeClass('on');
						root.find('.tabList li').eq(randomTab).addClass('on');
					};
					root.find('.tabConList').eq(root.find('.tabList li.on').index()).addClass('on');
				});
			};
		})();
		$('.tabCommon').tabCommon();
		// Tab - End

		// subTab - Start
		(function(){
			$.fn.tabSub = function(){
				return this.each(function(){
					var root = $(this);
					root.find('.subTabList li a').on('click', function(e){
						e.preventDefault();
						$(this).parent().addClass('on').siblings().removeClass('on');
						$('.subTabConList').eq(root.find('.subTabList li.on').index()).addClass('on').siblings().removeClass('on');

						var SUBJECT = $('.subTabList .on a').html();
						if (SUBJECT == "영어" || SUBJECT == "한국사") {
							$("input:radio[name=PT_TYPE]:radio[value='GPT']").prop('checked', true); // 선택하기
						} else {
							$("input:radio[name=PT_TYPE]:radio[value='SPT']").prop('checked', true); // 선택하기
						}

						getChart();
					});
				});
			};
		})();
		$('.subtabBox').tabSub();
		// subTab - End

		// Checkbox - Start
		(function(){
			$.fn.imgCheck = function(){
				return this.each(function(){
					root = $(this);
					if(root.find('input').prop('disabled') == true){
						root.addClass('disabled');
					};
					if(root.find('input').prop('checked') == true){
						root.addClass('on');
					}else{
						root.removeClass('on');
					};
					root.find('input').on('change', function(){
						if($(this).prop('checked') == true){
							$(this).parent().addClass('on');
						}else{
							$(this).parent().removeClass('on');
						};
					});
				});
			};
			$('.imgCheck').imgCheck();
		})();
		// Checkbox - End

		// Agree - Start
		(function(){
			$('.inBox .important a').on('click', function(e){
				e.preventDefault();
				$(this).toggleClass('on');
			})
		})();
		// Agree - End

		(function(){
			$('.mainBox_W > div a').on('click', function(){
				$(this).parent().addClass('on');
				$(this).parent().siblings().removeClass('on');
			});
		})();


		//바코드 팝업
		$(".btn-barcode").on("click",function(e){
			e.preventDefault();
			$(".mask").fadeIn();
			$(".popup-barcode").fadeIn();
		});
		$(".btn-close").on("click",function(e){
			e.preventDefault();
			$(".mask").fadeOut();
			$(".popup-barcode").fadeOut();
			$(".popup-popupBookPayment").fadeOut();
		});


	});
})(jQuery);

