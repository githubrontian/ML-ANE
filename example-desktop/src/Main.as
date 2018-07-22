package {
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.geom.Rectangle;

import starling.core.Starling;
import starling.events.Event;

[SWF(width="800", height="600", frameRate="60", backgroundColor="#FFFFFF")]
public class Main extends Sprite {

    public var mStarling:Starling;

    public function Main() {

        super();

        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;
        Starling.multitouchEnabled = false;
        var viewPort:Rectangle = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
        mStarling = new Starling(StarlingRoot, stage, viewPort, null, "auto", "auto");
        mStarling.stage.stageWidth = stage.stageWidth;  // <- same size on all devices!
        mStarling.stage.stageHeight = stage.stageHeight;
        mStarling.simulateMultitouch = false;
        mStarling.showStatsAt("right","bottom");
        mStarling.enableErrorChecking = false;
        mStarling.antiAliasing = 16;
        mStarling.skipUnchangedFrames = true;
        mStarling.supportHighResolutions = true;

        mStarling.addEventListener(Event.ROOT_CREATED,
                function onRootCreated(event:Object, app:StarlingRoot):void {
                    mStarling.removeEventListener(Event.ROOT_CREATED, onRootCreated);
                    app.start();
                    mStarling.start();
                });
    }

}
}
