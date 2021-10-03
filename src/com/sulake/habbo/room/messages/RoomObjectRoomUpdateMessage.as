package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_573:String = "RORUM_ROOM_FLOOR_UPDATE";
      
      public static const const_737:String = "RORUM_ROOM_LANDSCAPE_UPDATE";
      
      public static const const_653:String = "RORUM_ROOM_WALL_UPDATE";
       
      
      private var _type:String = "";
      
      private var var_166:String = "";
      
      public function RoomObjectRoomUpdateMessage(param1:String, param2:String)
      {
         super(null,null);
         _type = param1;
         var_166 = param2;
      }
      
      public function get value() : String
      {
         return var_166;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
