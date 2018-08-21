.class public interface abstract Lcom/alipay/android/barcode/rpc/BarcodePayRpcFacade;
.super Ljava/lang/Object;
.source "BarcodePayRpcFacade.java"


# virtual methods
.method public abstract payResultAck(Ljava/lang/String;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.payResultAck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract queryPayResult(Lcom/alipay/android/barcode/rpc/QueryBuyerReq;)Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.queryBuyerPayResult"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
