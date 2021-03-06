package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2004:int;
      
      private var var_1250:int;
      
      private var var_1825:int;
      
      private var var_1883:int = -1;
      
      private var var_376:int;
      
      private var var_1885:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1249:int;
      
      private var var_1884:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1884 = param2;
         var_1885 = param3;
         var_1250 = param4;
         var_376 = param5;
         var_1825 = param6;
         var_1249 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2004 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_2004;
      }
      
      public function get price() : int
      {
         return var_1250;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1883;
      }
      
      public function get offerCount() : int
      {
         return var_1249;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1885;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1883 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1250 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1249 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_376;
      }
      
      public function get averagePrice() : int
      {
         return var_1825;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1884;
      }
   }
}
