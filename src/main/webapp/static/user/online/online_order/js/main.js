function basePath(){
    //获取当前网址，如： http://localhost:8080/ems/Pages/Basic/Person.jsp
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8080
    var localhostPath = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/ems
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    //获取项目的basePath   http://localhost:8080/ems/
    var basePath=localhostPath+projectName+"/";
    return basePath;
};
var basePath=basePath();

jQuery(document).ready(function($){
	function ProductBuilder( element ) {
		this.element = element;
		this.stepsWrapper = this.element.children('.cd-builder-steps');
		this.steps = this.element.find('.builder-step');

		//store some specific bulider steps
		this.models = this.element.find('[data-selection="models"]');
		this.summary;
		this.optionsLists = this.element.find('.options-list');
		//bottom summary
		this.fixedSummary = this.element.find('.cd-builder-footer');
		this.modelPreview = this.element.find('.selected-product').find('img');
		this.totPriceWrapper = this.element.find('.tot-price').find('b');
		//builder navigations
		this.mainNavigation = this.element.find('.cd-builder-main-nav');
		this.secondaryNavigation = this.element.find('.cd-builder-secondary-nav');
		//used to check if the builder content has been loaded properly
		this.loaded = true;

		// bind builder events
		this.bindEvents();
	}

	ProductBuilder.prototype.bindEvents = function() {
		var self = this;

		//detect click on the left navigation
		this.mainNavigation.on('click', 'li:not(.active)', function(event){
			event.preventDefault();
			self.loaded && self.newContentSelected($(this).index());
		});

		//detect click on bottom fixed navigation
		this.secondaryNavigation.on('click', '.nav-item li:not(.buy)', function(event){
			event.preventDefault();
			var stepNumber = ( $(this).parents('.next').length > 0 ) ? $(this).index() + 1 : $(this).index() - 1;
			self.loaded && self.newContentSelected(stepNumber);
		});
		//detect click on one element in an options list (e.g, models, accessories)
		this.optionsLists.on('click', '.js-option', function(event){
			self.updateListOptions($(this));
		});
		//detect clicks on customizer controls (e.g., colors ...)
		this.stepsWrapper.on('click', '.cd-product-customizer a', function(event){
			event.preventDefault();
			self.customizeModel($(this));
		});
	};

	ProductBuilder.prototype.newContentSelected = function(nextStep) {
		//first - check if a model has been selected - user can navigate through the builder
		if( this.fixedSummary.hasClass('disabled') ) {
			//no model has been selected - show alert
			this.fixedSummary.addClass('show-alert');
		} else {
			//model has been selected so show new content
			//first check if the color step has been completed - in this case update the product bottom preview
			if( this.steps.filter('.active').is('[data-selection="colors"]') ) {
				//in this case, color has been changed - update the preview image
				var imageSelected = this.steps.filter('.active').find('.cd-product-previews').children('.selected').children('img').attr('src');
				this.modelPreview.attr('src', imageSelected);
			}
			//if Summary is the selected step (new step to be revealed) -> update summary content
			if( nextStep + 1 >= this.steps.length ) {
				this.createSummary();
			}

			this.showNewContent(nextStep);
			this.updatePrimaryNav(nextStep);
			this.updateSecondaryNav(nextStep);
		}
	}

	ProductBuilder.prototype.showNewContent = function(nextStep) {
		var actualStep = this.steps.filter('.active').index() + 1;
		if( actualStep < nextStep + 1 ) {
			//go to next section
			this.steps.eq(actualStep-1).removeClass('active back').addClass('move-left');
			this.steps.eq(nextStep).addClass('active').removeClass('move-left back');
		} else {
			//go to previous section
			this.steps.eq(actualStep-1).removeClass('active back move-left');
			this.steps.eq(nextStep).addClass('active back').removeClass('move-left');
		}
	}

	ProductBuilder.prototype.updatePrimaryNav = function(nextStep) {
		this.mainNavigation.find('li').eq(nextStep).addClass('active').siblings('.active').removeClass('active');
	}

	ProductBuilder.prototype.updateSecondaryNav = function(nextStep) {
		( nextStep == 0 ) ? this.fixedSummary.addClass('step-1') : this.fixedSummary.removeClass('step-1');

		this.secondaryNavigation.find('.nav-item.next').find('li').eq(nextStep).addClass('visible').removeClass('visited').prevAll().removeClass('visited').addClass('visited').end().nextAll().removeClass('visible visited');
		this.secondaryNavigation.find('.nav-item.prev').find('li').eq(nextStep).addClass('visible').removeClass('visited').prevAll().removeClass('visited').addClass('visited').end().nextAll().removeClass('visible visited');
	}

	ProductBuilder.prototype.createSummary = function() {
		var self = this;
		this.steps.each(function(){
			//this function may need to be updated according to your builder steps and summary
			var step = $(this);
			if( $(this).data('selection') == 'colors' ) {
				//create the Color summary
				var colorSelected = $(this).find('.cd-product-customizer').find('.selected'),
					color = colorSelected.children('a').data('color'),
					colorName = colorSelected.data('content'),
					imageSelected = $(this).find('.cd-product-previews').find('.selected img').attr('src');

				self.summary.find('.summary-color').find('.color-label').text(colorName).siblings('.color-swatch').attr('data-color', color);
				self.summary.find('.product-preview').attr('src', imageSelected);
			} else if( $(this).data('selection') == 'accessories' ) {
				var selectedOptions = $(this).find('.js-option.selected'),
					optionsContent = '';

				if( selectedOptions.length == 0 ) {
					optionsContent = '<li><p>No Accessories selected;</p></li>';
				} else {
					selectedOptions.each(function(){
						optionsContent +='<li><p>'+$(this).find('p').text()+'</p></li>';
					});
				}

				self.summary.find('.summary-accessories').children('li').remove().end().append($(optionsContent));
			}
		});
	}

	ProductBuilder.prototype.updateListOptions = function(listItem) {
		var self = this;

		if( listItem.hasClass('js-radio') ) {
			//this means only one option can be selected (e.g., models) - so check if there's another option selected and deselect it
			var alreadySelectedOption = listItem.siblings('.selected'),
				price = (alreadySelectedOption.length > 0 ) ? -Number(alreadySelectedOption.data('price')) : 0;

			//if the option was already selected and you are deselecting it - price is the price of the option just clicked
			( listItem.hasClass('selected') )
				? price = -Number(listItem.data('price'))
				: price = Number(listItem.data('price')) + price;

			//now deselect all the other options
			alreadySelectedOption.removeClass('selected');
			//toggle the option just selected
			listItem.toggleClass('selected');
			//update totalPrice - only if the step is not the Models step
			(listItem.parents('[data-selection="models"]').length == 0) && self.updatePrice(price);
		} else {
			//more than one options can be selected - just need to add/remove the one just clicked
			var price = ( listItem.hasClass('selected') ) ? -Number(listItem.data('price')) : Number(listItem.data('price'));
			//toggle the option just selected
			listItem.toggleClass('selected');
			//update totalPrice
			self.updatePrice(price);
		}

		if( listItem.parents('[data-selection="models"]').length > 0 ) {
			//since a model has been selected/deselected, you need to update the builder content
			self.updateModelContent(listItem);
		}
	};
	/*var rs
	for(var i=0;i<5;i++){
        rs='<c:forEach var="type" items="${goodsTypes}"><li class="js-option js-radio type"><span class="name">"${type.goodstypeName}"</span> <img src="${type.goodstypeimgUrl}" alt="${type.goodstypeName}"> <div class="radio"> <input type="hidden" name="select1" value="${type.goodstypeId}"/> </div> </li>'
	}

    $(".models-list").html(rs)*/
	$.ajax({
		type:"POST",
        dataType   : "json",
        url        : basePath+"/user/online_select11.action",
		success: function(data){
			alert(11)
			var rs=""
			for(var i=0;i<data.length;i++){
				if(i==0){
                    rs+="<li class='js-option js-radio type'><span class='name'>"+data[i].goodstypeName+"</span><img src='"+data[i].goodstypeimgUrl+"' alt='"+data[i].goodstypeName+"'><div class='radio'> <input type='hidden' name='select1' value='"+data[i].goodstypeId+"' checked/> </div></li>"
				}else {


                    rs += "<li class='js-option js-radio type'><span class='name'>" + data[i].goodstypeName + "</span><img src='" + data[i].goodstypeimgUrl + "' alt='" + data[i].goodstypeName + "'><div class='radio'> <input type='hidden' name='select1' value='" + data[i].goodstypeId + "'/> </div></li>"
                }
				}
            $(".models-list").html(rs)
		}
	})
	ProductBuilder.prototype.updateModelContent = function(model) {
		var self = this;
		if( model.hasClass('selected') ) {
			var modelType = model.data('model'),
				modelImage = model.find('img').attr('src');

			//need to update the product image in the bottom fixed navigation
			this.modelPreview.attr('src', modelImage);

			//need to update the content of the builder according to the selected product
			//first - remove the contet which refers to a different model
			this.models.siblings('li').remove();
			//second - load the new content
		/*	alert("111")*/
			/*alert($("input[name='select1']").val())*/
			var id=$("input[name='select1']").val();
            alert(id)


            /*alert(id)*/
            /*var radio = document.getElementsByName("select1");
            alert(111)
            for (i=0; i<radio.length; i++) {
                alert(222)
                if (radio[i].checked) {
                    alert(radio[i].value)
                }
            }*/

			/*$(".options-list").children.click(function () {
				alert(111)
				id=$(this).find("input").val();
            });*/
          /*  $("#type li").on("click","li",function(){      //只需要找到你点击的是哪个ul里面的就行
				alert(111)
                alert($(this).text());
            });*/
            /*alert($(".models-list").val())*/
           /* $(".type").click(function(){
                alert( $(this).text());
            });*/

            var datas={"id":id};
            $.ajax({
                type       : "POST",
                dataType   : "json",
                data:datas,
                url        : basePath+"/user/online_select2.action",
                success    : function(da){
                    // var result="";
                    // for(var i=0;i<da.length;i++){
                    //     result+="<li data-content='"+da[i].goodschildName+"' "+ "><a href='#' data-color=\"orange\"></a></li>"
                    //     alert(result)
                    // }
                    // $(".cd-product-customizer").html(result);

                    /*alert("成功")*/
                    $.ajax({
                        type       : "GET",
                        dataType   : "html",
                        url        : "jsp/online_order1.jsp",
                        beforeSend : function(){
                            self.loaded = false;
                            model.siblings().removeClass('loaded');
                        },
                        success    : function(data){
                            /*alert("chenggg")*/
                            self.models.after(data);
                            self.loaded = true;
                            model.addClass('loaded');
                            //activate top and bottom navigations
                            self.fixedSummary.add(self.mainNavigation).removeClass('disabled show-alert');
                            //update properties of the object
                            self.steps = self.element.find('.builder-step');
                            self.summary = self.element.find('[data-selection="summary"]');
                            //detect click on one element in an options list
                            self.optionsLists.off('click', '.js-option');
                            self.optionsLists = self.element.find('.options-list');
                            self.optionsLists.on('click', '.js-option', function(event){
                                    self.updateListOptions($(this));
                                }
                            );
                            //this is used not to load the animation the first time new content is loaded
                            self.element.find('.first-load').removeClass('first-load');
                            var result="";
                            var img="";
                            for(var i=0;i<da.length;i++){
                                result+="<li data-content='"+da[i].goodschildName+"'><a href='#' data-color=\"orange\"></a>" +
                                    "<input type='hidden'value='"+da[i].goodschildId+"'name='goodschildId'></li>"
                                // result+="<li data-content='"+da[i].goodschildName+"'><a href='#' data-color='orange'></a> +</li>"
                                if(i==0){
                                    img+="<li class='selected'><img src='"+da[i].goodschildImg+"' class='product-preview'></li>"
                                }else{
                                    img+="<li><img src='"+da[i].goodschildImg+"' class='product-preview'></li>"
                                }
                            }
                            $(".cd-product-customizer").html(result);
                            $(".cd-product-previews").html(img);

                            /*alert("成功")*/
                        },
                        error     : function(jqXHR, textStatus, errorThrown) {
                            //you may want to show an error message here
                        }
                    });


                }
            });



            /*$.ajax({
                type       : "POST",
                dataType   : "json",
                data:datas,
                url        : basePath+"/user/online_select2.action",
                beforeSend : function(){
                    self.loaded = false;
                    model.siblings().removeClass('loaded');
                },
                success    : function(data){
                    self.models.after(data);
                    self.loaded = true;
                    model.addClass('loaded');
                    //activate top and bottom navigations
                    self.fixedSummary.add(self.mainNavigation).removeClass('disabled show-alert');
                    //update properties of the object
                    self.steps = self.element.find('.builder-step');
                    self.summary = self.element.find('[data-selection="summary"]');
                    //detect click on one element in an options list
                    self.optionsLists.off('click', '.js-option');
                    self.optionsLists = self.element.find('.options-list');
                    self.optionsLists.on('click', '.js-option', function(event){
                        self.updateListOptions($(this));
                    });

                    //this is used not to load the animation the first time new content is loaded
                    self.element.find('.first-load').removeClass('first-load');
                },
                error     : function(jqXHR, textStatus, errorThrown) {
                    //you may want to show an error message here
                }
            });*/

			//update price (no adding/removing)
			this.totPriceWrapper.text(model.data('price'));
		} else {
			//no model has been selected
			this.fixedSummary.add(this.mainNavigation).addClass('disabled');
			//update price
			this.totPriceWrapper.text('0');

			this.models.find('.loaded').removeClass('loaded');
		}
	};

	ProductBuilder.prototype.customizeModel = function(target) {

		var parent = target.parent('li')
			index = parent.index();


        //update final price
		var price = ( parent.hasClass('selected') )
			? 0
			: Number(parent.data('price')) - parent.siblings('.selected').data('price');

	/*	this.updatePrice(price);*/
		target.parent('li').addClass('selected').siblings().removeClass('selected').parents('.cd-product-customizer').siblings('.cd-product-previews').children('.selected').removeClass('selected').end().children('li').eq(index).addClass('selected');

        var childid=$("input[name='goodschildId']:checked").val();
        alert(childid)
        var typeid=$("input[name='select1']:checked").val();
        var das={"goodschildId":childid,"id":typeid};
        $.ajax({
            type: "POST",
            dataType: "json",
            data: das,
            url: basePath + "/user/online_select3.action",
            success: function (data) {
                /*alert("chengg")*/
                var result="";
				for(var i=0;i<data.length;i++){

                	result+="<li class='js-option js-radio'><p>"+data[i].goodsmaterialName+"</p> <div class='radio'><input type='hidden' name='material' value='"+data[i].goodsmaterialId+"'/></div></li>"
					/*alert(result)*/
				}
				$("#material").html(result)
                var childid=$("input[name='goodschildId']").val();
                var typeid=$("input[name='select1']").val();
                var materiId=$("input[name='material']").val();
                var das={"goodschildId":childid,"id":typeid,"materiId":materiId};
               /* alert(materiId)*/
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    data: das,
                    url: basePath + "user/online_select4.action",
                    success: function (data) {
                        /*alert("chengg")*/
                        var result=""
                        for(var i=0;i<data.length;i++){
                            result+="<li class='js-option js-radio'><p>"+data[i].goodsstyleName+"</p><div class='radio'><input type='hidden' name='style' value='"+data[i].goodsstyleId+"'></div></li>"

                        }
                       /* result+="<li style='background:orange'><a href='user/online_order.action' class='btn btn-primary btn-lg active' role='button' style=''>提交</a></li>"*/
                        $("#mystyle").prepend(result)

                    }
                });

            }
        });

        /*this.updatePrice(price);*/


	}

	ProductBuilder.prototype.updatePrice = function(price) {
		/*var actualPrice = Number(this.totPriceWrapper.text()) + price;
		this.totPriceWrapper.text(actualPrice);*/

        /*var childid=$("input[name='goodschildId']").val();
        var typeid=$("input[name='select1']").val();
        var materiId=$("input[name='material']").val();
        var das={"goodschildId":childid,"id":typeid,"materiId":materiId};
        alert(materiId)
        $.ajax({
            type: "GET",
            dataType: "json",
            data: das,
            url: basePath + "user/online_select4.action",
            success: function (data) {
            	/!*alert("chengg")*!/
				var result=""
				for(var i=0;i<data.length;i++){
                	result+="<li class='js-option js-radio'><p>"+data[i].goodsstyleName+"</p><div class='radio'><input type='hidden' name='style' value='"+data[i].goodsstyleId+"'></div></li>"

                }
                result+="<li style='background:orange'><a href='#' class='btn btn-primary btn-lg active' role='button' style=''>提交</a></li>"
                $("#mystyle").html(result)
            }
        });*/

	};

	if( $('.cd-product-builder').length > 0 ) {
		$('.cd-product-builder').each(function(){
			//create a productBuilder object for each .cd-product-builder
			new ProductBuilder($(this));
		});
	}
});