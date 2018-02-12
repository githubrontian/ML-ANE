/* Copyright 2018 Tua Rua Ltd.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

package com.tuarua.mlane.events {
import flash.events.Event;

public class CompileEvent extends Event {
    public static const ERROR:String = "MLANE.OnModelCompileError";
    public static const COMPLETE:String = "MLANE.OnModelCompiled";

    public var filePath:String;
    public var error:String;

    public function CompileEvent(type:String, filePath:String = null, error:String = null,
                                 bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
        this.filePath = filePath;
        this.error = error;
    }

    public override function clone():Event {
        return new CompileEvent(type, this.filePath, this.error, bubbles, cancelable);
    }

    public override function toString():String {
        return formatToString("CompileEvent", "filePath", "error", "type", "bubbles", "cancelable");
    }
}
}