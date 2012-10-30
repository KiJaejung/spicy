var net=new Object();
net.READY_STATE_UNINITIALIZED=0;
net.READY_STATE_LOADING=1;
net.READY_STATE_LOADED=2;
net.READY_STATE__INTERACTIVE=3;
net.READY_STATE_COMPLETE=4;
net.ContentLoader=function(url, onload, onerror, method, body){
	if(body=="undefined" || body == undefined) {
		body = null;
	}
	
	this.body = body;
	this.method = method;
	this.url=url;
	this.req=null;
	this.onload=onload;
	this.onerror=(onerror) ? onerror : this.defaultError;
	this.loadXMLDoc(url);
}
net.ContentLoader.prototype={
	loadXMLDoc:function(url){
		if(window.XMLHttpRequest){
			this.req=new XMLHttpRequest();
		} else if(window.ActiveXObject){
			this.req=new ActiveXObject("Microsoft.XMLHTTP");
		}
		if(this.req){
			try{
				var loader=this;
				this.req.onreadystatechange=function(){
					loader.onReadyState.call(loader);
				}
				this.req.open(this.method, url+"?"+this.body, true);
				if(this.method="POST" || this.method=="PUT") {
					this.req.setRequestHeader("Content-type", "application/xml");
					this.req.setRequestHeader("Content-length", this.body.length);
					this.req.setRequestHeader("Connection", "close");
				}
				this.req.send(this.body);
			} catch(err){
				this.onerror.call(this);
			}
		}
	},
	onReadyState:function(){
		var req=this.req;
		var ready=req.readyState;
		if(ready==net.READY_STATE_COMPLETE){
			var httpStatus=req.status;
			if(httpStatus==200||httpStatus==0){
				this.onload.call(this);
			} else{
				this.onerror.call(this);
			}
		}
	},
	defaultError:function(){
		alert("error fetching data!"
			+"\n\nreadyState: " + this.req.readyState
			+"\nstatus: " + this.req.status
			+"\nheaders: " + this.req.getAllResponseHeaders());
	}
}