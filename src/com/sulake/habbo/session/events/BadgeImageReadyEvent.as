package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_129:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_656:String;
      
      private var _image:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_129,param3,param4);
         var_656 = param1;
         _image = param2;
      }
      
      public function get badgeId() : String
      {
         return var_656;
      }
      
      public function get badgeImage() : BitmapData
      {
         return _image;
      }
   }
}
