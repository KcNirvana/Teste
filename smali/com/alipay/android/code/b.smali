.class public interface abstract Lcom/alipay/android/code/b;
.super Ljava/lang/Object;
.source "PaipaiFacade.java"


# virtual methods
.method public abstract a(Lcom/alipay/android/code/RouteCommandReq;)Lcom/alipay/android/code/RouteRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecodec.route"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract a(Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;)Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecodec.consultRoute.pb"
    .end annotation
.end method
