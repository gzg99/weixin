function add(){
	    	var goods_id="";
	    	var goods_name="";
	    	var goods_img="";
	    	var goods_price="";
	    	var goods_num="";
	    	var fgt_price= $('#fgt_price').val();
	    	if(fgt_price==-2){
	    		showTip("请选择配送方式！");
	    		return;
	    	}
	    	
	    	var goods_ids=$("input[name='goods_id']");
	    	for (var i = 0; i < goods_ids.length; i++) {
				if (i == 0) {
					goods_id += goods_ids[i].value;
				} else {
					goods_id += ",-=" + goods_ids[i].value;
				}
			}
	    	
	    	var goods_names=$("input[name='goods_name']") ;
	    	for (var i = 0; i < goods_names.length; i++) {
				if (i == 0) {
					goods_name += goods_names[i].value;
				} else {
					goods_name += ",-=" + goods_names[i].value;
				}
			}
	    	var goods_imgs =$("input[name='goods_img']");
	    	for (var i = 0; i < goods_imgs.length; i++) {
				if (i == 0) {
					goods_img += goods_imgs[i].value;
				} else {
					goods_img += ",-=" + goods_imgs[i].value;
				}
			}
	    	var goods_prices=$("input[name='goods_price']") ;
	    	for (var i = 0; i < goods_prices.length; i++) {
				if (i == 0) {
					goods_price += goods_prices[i].value;
				} else {
					goods_price += ",-=" + goods_prices[i].value;
				}
			}
	    	var goods_nums =$("input[name='goods_num']");
	    	for (var i = 0; i < goods_nums.length; i++) {
				if (i == 0) {
					goods_num += goods_nums[i].value;
				} else {
					goods_num += ",-=" + goods_nums[i].value;
				}
			}
	    	var goods_total= $('#tprice').val();
	    	var goods_total_num= $('#tnum').val();
	    	
	    	var cps_id= $('#cps_id').val();
	    	var cps_name= $('#cps_name').val();
	    	var cps_price= $('#cps_price').val();
	    	if(typeof(cps_name)=='undefined'){
	    		cps_id= '';
	    		cps_name= '';
	        	cps_price=0;
	    	}
	    	var receive ="";
	    	var addr_user=$('#addr_user').val();
	    	var addr_tel=$('#addr_tel').val();
	    	var addr_name=$('#addr_name').val();
	    	
	    	if(typeof(addr_user)=='undefined'){
	    		addr_user='';
	    	}
	    	if(typeof(addr_tel)=='undefined'){
	    		addr_tel='';
	    	}
	    	if(typeof(addr_name)=='undefined'){
	    		addr_name='';
	    	}
	    	
	    	if(fgt_price!=-1){
	    		var area_area = $('#area_area').val();
	    		var area_addr = $('#area_addr').val();
	    		if(area_area==-2){
	    			showTip('请选择区域');
	        		return ;
	    		}
				if(area_addr==-2){
					showTip('请选择自提点');
		    		return ;
	    		}
	    		receive=$('#area_area').find("option:selected").text()+area_addr;
	    		
	    	}
			
	    	if(addr_user==''||addr_tel==''||addr_name==''){
	    		showTip('请填写有效的收货地址');
	    		return ;
	    	}
	    	var province =$('#province').text();
			if(province==''){
				showTip("收货地址填写有误，请重新编辑！");
				return;
			}
			var city =$('#city').text();
			if(city==''){
				showTip("收货地址填写有误，请重新编辑！");
				return;
			}
			var area =$('#area').text();
			if(area==''){
				showTip("收货地址填写有误，请重新编辑！");
				return;
			}
	
			var note= $('#note').val();
	    	addr_name=addr_user+' '+addr_tel+' '+province+' '+city+' '+ area+' '+addr_name;
	    	$.ajax({
				url:'orderInsert.html',
				type:'post',
				data:{
					'goods_id':goods_id,
					'goods_name':goods_name,
					'goods_img':goods_img,
					'goods_price':goods_price,
					'goods_num':goods_num,
					'goods_total':goods_total,
					'goods_total_num':goods_total_num,
					'cps_id':cps_id,
					'cps_name':cps_name,
					'cps_price':cps_price,
					'addr_name':addr_name,
					'receive':receive,
					'note':note
				},
				success:function(rs){
					var re = /^[0-9]+.?[0-9]*$/;    
					if(re.test(rs)&&rs!=0){
						window.location.href='payOrder.html?order_id='+rs;
					}else{
						alert("失败！");
					}
				}
			});
	
	    }