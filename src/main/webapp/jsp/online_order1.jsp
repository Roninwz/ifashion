<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<li data-selection="colors" class="builder-step first-load">
	<section class="cd-step-content">
		<header>
			<h1>选择种类</h1>
			<span class="steps-indicator">Step <b>2</b> of 4</span>
		</header>

		 <ul class="cd-product-previews">
<%--			<li class="selected"><img src="img/product01_col01.jpg" alt="Product Preview" class="product-preview"></li>
			<li><img src="static/user/online/online_order/img/product01_col02.jpg" alt="Product Preview" class="product-preview"></li>
			<li><img src="static/user/online/online_order/img/product01_col03.jpg" alt="Product Preview" class="product-preview"></li>
			<li><img src="static/user/online/online_order/img/product01_col01.jpg" alt="Product Preview" class="product-preview"></li>
			<li><img src="static/user/online/online_order/img/product01_col02.jpg" alt="Product Preview" class="product-preview"></li>
			<li><img src="static/user/online/online_order/img/product01_col03.jpg" alt="Product Preview" class="product-preview"></li>--%>
		</ul>

		<ul class="cd-product-customizer">
			<%--<li data-content="dunxiu" class="selected"><a href="#"></a></li>
			<li data-content="裤子" ><a data-color="orange" href="#0"></a></li>
			<li data-content="短袖"><a data-color="orange" href="#0"></a></li>
			<li data-content="上衣" class="selected"><a href="#"></a></li>
			<li data-content="裤子" ><a data-color="grey" href="#0"></a></li>
			<li data-content="短袖"><a data-color="orange" href="#0"></a></li>--%>
		</ul>
	</section>
</li>

<li data-selection="accessories" class="builder-step first-load">
	<section class="cd-step-content">
		<header>
			<h1>材质</h1>
			<span class="steps-indicator">Step <b>3</b> of 4</span>
		</header>

		<ul class="accessories-list options-list" id="material">
			<%--<li class="js-option js-radio" data-price="1080">
				<p>材质一</p>

				<div class="radio"></div>
			</li>

			<li class="js-option js-radio" data-price="1895">
				<p>材质二</p>

				<div class="radio"></div>
			</li>

			<li class="js-option js-radio" data-price="975">
				<p>材质三</p>

				<div class="radio"></div>
			</li>--%>
		</ul>
	</section>
</li>

<li data-selection="accessories" class="builder-step first-load">
	<section class="cd-step-content">
		<header>
			<h1>风格</h1>
			<span class="steps-indicator">Step <b>4</b> of 4</span>
		</header>

		<ul class="accessories-list options-list" id="mystyle">
			<%--<li class="js-option js-radio" data-price="1080">
				<p>风格一</p>

				<div class="radio"></div>
			</li>

			<li class="js-option js-radio" data-price="1895">
				<p>风格二</p>

				<div class="radio"></div>
			</li>

			<li class="js-option js-radio" data-price="975">
				<p>风格三</p>

				<div class="radio"></div>
			</li>--%>
			<li style="background:orange"><a href="javascript:void(0)" class="btn btn-primary btn-lg active" role="button" style="">提交</a></li>
		</ul>
	</section>
</li>
<li class="builder-step first-load">
</li>
<script>
	$(".btn-primary").click(function () {
        var childid=$("input[name='goodschildId']").val();
        var typeid=$("input[name='select1']").val();
        var materiId=$("input[name='material']").val();
        var styleId=$("input[name='style']").val();

        window.location.href="user/online_order.action?typeid="+typeid+"&childid="+childid+"&materiId="+materiId+"&styleId="+styleId;
    });
</script>



