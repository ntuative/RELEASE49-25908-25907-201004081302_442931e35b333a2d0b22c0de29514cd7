package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomContentLoadedEvent extends Event
   {
      
      public static const const_292:String = "RCLE_SUCCESS";
      
      public static const const_401:String = "RCLE_FAILURE";
      
      public static const const_734:String = "RCLE_CANCEL";
       
      
      private var var_1962:String;
      
      public function RoomContentLoadedEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         var_1962 = param2;
      }
      
      public function get contentType() : String
      {
         return var_1962;
      }
   }
}
