var zoom = 1,//0.48299999999999954,//1,
 end,
 scrolling = 0,
 scrolled = 0,
 posX = 1,//-9720.458105713386,
 posY = 0,//-310.44907059027446,
 tmpPosx = 1,
 tmpPosy = 0,
 board = document.getElementById('board'),
 view = document.getElementById('view'),
 transformPrefix, transform;
 
//========= READY END =======/
 $(document).ready(function() {


 transformPrefix = GetVendorPrefix(["transform", "msTransform", "MozTransform", "webkitTransform", "OTransform"]);

		//Listener Scroll	
		  //view.addEventListener('wheel', function (e) {
			 //console.log("Listener Scroll Variables: Scrolling->" + scrolling + ", sSrolled->"+scrolled+ ", Zomm -> "+ zoom + " ");
			 //console.log("Listener Scroll Variables: e.deltaY->"  + e.deltaY);
		   //if ((1 !== zoom && e.deltaY > 0) || (0.1 !== zoom && e.deltaY < 0)) 
			//{
		      //console.log("Listener Scroll if entra 1");
		      //e.deltaY > 0 ? scrolling++ : scrolling--;

		      //if (scrolling % 1 === 0) {
		    	//console.log("Listener Scroll if entra 2 scrolling -> "+ scrolling);  
		        //zoom += (scrolling / 1000);
		        //if (zoom > 1) {
		          //zoom = 1;
		          //console.log("Listener Scroll Zoom in ");
		        //}
		        //if (zoom < 0.1) {
		          //zoom = 0.1;
		          //console.log("Listener Scroll Zoom out ");
		        //}

		        //applyView();
		      //}
		      
		      //clearTimeout(end);

		      //end = setTimeout(function () {
		        //scrolled = 0;
		        //scrolling = 0;
		      //}, 20);
		    
		    //}
		  //});
		

		  view.onmousedown = function (e) {
			  console.log("Funcion onmousedown.....  ");
			    var prevX = e.clientX,
			        prevY = e.clientY;
			  
			    view.onmousemove = function (ev) {
			     console.log("Funcion onmousemove.....  ");
			      posX += (ev.clientX - prevX) * (1 / zoom);
			      posY += (ev.clientY - prevY) * (1 / zoom);

			      prevX = ev.clientX;
			      prevY = ev.clientY;
			      applyView();
			    }
			  };
			  
			  view.onmouseup = function () {
				  console.log("Funcion onmouseup.....  ");
			    view.onmousemove = null;
			  };
	 

		 
		 applyView();

		 
		 

	 $('.popover-markup>.trigger').popover({
		    html: true,
		    title: function () {
		        return $(this).parent().find('.head').html();
		    },
		    content: function () {
		        return $(this).parent().find('.content').html();
		    }
		});
	 
	 
	 
 });
//========= READY END =======/
//========= FUNCIONES ========/
	function GetVendorPrefix(arrayOfPrefixes) {
	    for (var i = 0; i < arrayOfPrefixes.length; ++i) {
	      if (typeof board.style[arrayOfPrefixes[i]] != 'undefined') {
	        return arrayOfPrefixes[i];
	      }
	    }
	  }

	//APLICAR MEDIDAS
 function applyView() {
	    board.style[transformPrefix] = 'scale(' + zoom + ') ' + 'translate3d(' + posX + 'px,' + posY + 'px,0)';
	    console.log("Variables despues de apliview: Scrolling->" + scrolling + ", sSrolled->"+scrolled+ ", Zomm -> "+ zoom + " ");
	    console.log("Variables despues de apliview: POS-> posx: " + posX + ", posY:" + posY );
	    console.log("============================================================================================================");
	  }
//ZOOM IN
 function zoom_inx(){
	 if ((1 !== zoom ) || (0.1 !== zoom)) 
		{
	      console.log("Listener Scroll if entra 1 Zoom in");
	      scrolling++;

	      if (scrolling % 1 === 0) {
	    	    console.log("posX  -> " + posX + " ");
	    	  	posX += 130;
		        zoom += (10 / 1000);
		      
		        if (zoom > 1) {
		        	posX += -130; 
		            zoom = 1;
		        }
		        if (zoom < 0.1) {
		        	posX += -130; 
		          zoom = 0.1;
		        }

		        applyView();
		      }
		      
		      clearTimeout(end);

		      end = setTimeout(function () {
		        scrolled = 0;
		        scrolling = 0;
		      }, 20);
		
	      
		}

	 }
//ZOOM OUT
 function zoom_outx(){
	 if ((1 !== zoom ) || (0.1 !== zoom)) 
		{

	      scrolling--;
	      //console.log("zoom out scrolling: " + scrolling + " ");
	      if (scrolling % 1 === 0) {
	    	  	console.log("posX  -> " + posX + " ");
	    	  	posX += -130;
	    	  	//tmpPosx += (10 / 1000);      console.log("tmpPosx += (10 / 1000) -> " + tmpPosx );
	    	    //posX = tmpPosx * -100;        console.log("posX = tmpPosx * -100 -> " + posX + " ");
		        zoom += (-10 / 1000);      console.log("zoom += (-10 / 1000) -> " + zoom + " ");
		      
		        if (zoom > 1) {
		        	posX += 130; 
		          zoom = 1;
		        }
		        if (zoom < 0.1) {
		        	posX += 130; 
		          zoom = 0.1;
		        }

		        applyView();
		      }
		      
		      clearTimeout(end);

		      end = setTimeout(function () {
		        scrolled = 0;
		        scrolling = 0;
		      }, 20);
		
	      
		}

	 }