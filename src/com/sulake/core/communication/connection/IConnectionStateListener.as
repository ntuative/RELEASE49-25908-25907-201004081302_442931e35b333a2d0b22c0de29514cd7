package com.sulake.core.communication.connection
{
   public interface IConnectionStateListener
   {
       
      
      function messageReceived(param1:String, param2:String) : void;
      
      function method_15(param1:String, param2:int) : void;
      
      function messageSent(param1:String, param2:String) : void;
   }
}
