package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_846:String = "price_type_none";
      
      public static const const_360:String = "pricing_model_multi";
      
      public static const const_318:String = "price_type_credits";
      
      public static const const_399:String = "price_type_credits_and_pixels";
      
      public static const const_367:String = "pricing_model_bundle";
      
      public static const const_441:String = "pricing_model_single";
      
      public static const const_562:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1343:String = "pricing_model_unknown";
      
      public static const const_430:String = "price_type_pixels";
       
      
      private var var_1649:int;
      
      private var var_778:int;
      
      private var _offerId:int;
      
      private var var_777:int;
      
      private var var_385:String;
      
      private var var_556:String;
      
      private var var_449:ICatalogPage;
      
      private var var_386:IProductContainer;
      
      private var var_1126:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1126 = param1.localizationId;
         var_778 = param1.priceInCredits;
         var_777 = param1.priceInPixels;
         var_449 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_385;
      }
      
      public function get page() : ICatalogPage
      {
         return var_449;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1649 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_386;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_777;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1126 = "";
         var_778 = 0;
         var_777 = 0;
         var_449 = null;
         if(var_386 != null)
         {
            var_386.dispose();
            var_386 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1649;
      }
      
      public function get priceInCredits() : int
      {
         return var_778;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_385 = const_441;
            }
            else
            {
               var_385 = const_360;
            }
         }
         else if(param1.length > 1)
         {
            var_385 = const_367;
         }
         else
         {
            var_385 = const_1343;
         }
      }
      
      public function get priceType() : String
      {
         return var_556;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_385)
         {
            case const_441:
               var_386 = new SingleProductContainer(this,param1);
               break;
            case const_360:
               var_386 = new MultiProductContainer(this,param1);
               break;
            case const_367:
               var_386 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_385);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1126;
      }
      
      private function analyzePriceType() : void
      {
         if(var_778 > 0 && var_777 > 0)
         {
            var_556 = const_399;
         }
         else if(var_778 > 0)
         {
            var_556 = const_318;
         }
         else if(var_777 > 0)
         {
            var_556 = const_430;
         }
         else
         {
            var_556 = const_846;
         }
      }
   }
}
