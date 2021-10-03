package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_80:Number = 0;
      
      private var _data:String = "";
      
      private var var_1552:int = 0;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2014:Boolean = false;
      
      private var var_2380:String = "";
      
      private var _id:int = 0;
      
      private var var_185:Boolean = false;
      
      private var var_236:String = "";
      
      private var var_2016:int = 0;
      
      private var var_2015:int = 0;
      
      private var var_1672:int = 0;
      
      private var var_1671:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2014 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_185)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2014;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_185)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_236;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_185)
         {
            var_1672 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_185)
         {
            var_2016 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_185)
         {
            var_2015 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_185)
         {
            var_236 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_185)
         {
            var_1671 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_185)
         {
            var_31 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1672;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_185)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2016;
      }
      
      public function get wallY() : Number
      {
         return var_2015;
      }
      
      public function get localY() : Number
      {
         return var_1671;
      }
      
      public function setReadOnly() : void
      {
         var_185 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_185)
         {
            var_80 = param1;
         }
      }
   }
}
