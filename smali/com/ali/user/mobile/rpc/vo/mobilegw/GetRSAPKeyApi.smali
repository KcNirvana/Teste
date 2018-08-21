.class public interface abstract Lcom/ali/user/mobile/rpc/vo/mobilegw/GetRSAPKeyApi;
.super Ljava/lang/Object;
.source "GetRSAPKeyApi.java"


# virtual methods
.method public abstract getRsaKey()Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getRSAKey"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
