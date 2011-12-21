package {

	import caurina.transitions.Tweener;
	import caurina.transitions.Equations;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.filters.DropShadowFilter;
	// import charts.Elements.Element;
	import com.serialization.json.JSON;
	import string.Utils;
	import string.Css;
	import object_helper;
	import charts.series.has_tooltip;
	import flash.display.Loader;
	import flash.event.Event;
	import flash.net.URLRequest;
	
	public class TooltipLoader extends Tooltip {
		
		public var myLoader:Loader = new Loader();
	
		public static function loadImage(ttImageUrl:String):Object {
		
			myLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgressStatus);
			myLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoaderReady);
			
			var fileRequest:URLRequest = new URLRequest(ttImageUrl);
			myLoader.load(fileRequest);
			
			return myLoader;
		
		}
		
/*		public function onProgressStatus(e:ProgressEvent) {   
			// this is where progress will be monitored     
			tr.ace(e.bytesLoaded, e.bytesTotal); 
		}*/
		
/*		public function onLoaderReady(e:Event) {     
			// the image is now loaded, so let's add it to the display tree!     
			//addChild(myLoader);
			tr.ace(e.width, e.height);
		}*/
	
	}
	
}