(function($) {
	function leftRightSilde(left, right) {
		var $left = $(left),
			$right = $(right),
			$win = $(window),
			$parent = $left.parent(),
			leftH = $left.height(),
			rightH = $right.height(),
			$higher, $lower, higher = 0,
			lower = 0;

		$parent.css({
			'position': 'relative'
		});

		if (leftH >= rightH) {
			$higher = $left;
			$lower = $right;
		} else {
            $higher = $right;
			$lower = $left;
		}


		$win.bind('scroll', function(e) {
			var winH = $win.height(),
				winScrollTop = $win.scrollTop(),
                leftTop = $left.offset().top
                if($right.css("position")=="static"){
                    rightTop = $right.offset().top;
                }
            //console.log($right.css("position"))
			if (leftH >= rightH) {
				higher = leftH + rightTop;
				lower = rightH + rightTop;
			}
			else{
				higher = rightH + rightTop;
				lower = leftH + rightTop;
			}
			if (winH + winScrollTop < lower) {
                $lower.css({
                    'position': 'static'
                });
			} else if (winH + winScrollTop >= lower && winH + winScrollTop <= higher) {
				$lower.css({
					'position': 'fixed',
                        'bottom': '0px',
                    'left': $lower.offset().left
				});
			} else {
				$lower.css({
                    'position': 'absolute',
                    'bottom': '0px',
                    'left': $lower.offset().left - $parent.offset().left
				});
			}
		});
	}
	window.utils = window.utils || {};
	window.utils.leftRightSilde = leftRightSilde;
})(window.jQuery);

$(document).ready(function() {
	setTimeout(function(){utils.leftRightSilde('.c3_l', '.c3_r');},1000)
});