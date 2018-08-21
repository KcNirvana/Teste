.class public interface abstract Lcom/alipay/android/app/pb/rpc/MspDispatcherService;
.super Ljava/lang/Object;
.source "MspDispatcherService.java"


# virtual methods
.method public abstract dispatchLoginV1(Lcom/alipay/android/app/pb/rpc/v1/MspReq;)Lcom/alipay/android/app/pb/rpc/v1/MspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.msp.cashier.dispatch.logincheck"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation
.end method

.method public abstract dispatchLoginV2(Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;)Lcom/alipay/android/app/pb/rpc/v2/MspResV2;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.msp.cashier.dispatch.logincheck.v2"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation
.end method

.method public abstract dispatchLoginV3(Lcom/alipay/android/app/pb/rpc/v3/MspReqV3;)Lcom/alipay/android/app/pb/rpc/v3/MspResV3;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.msp.cashier.dispatch.logincheck.v3"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation
.end method

.method public abstract dispatchSecurityV1(Lcom/alipay/android/app/pb/rpc/v1/MspReq;)Lcom/alipay/android/app/pb/rpc/v1/MspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.security.security.dispatch.pb"
    .end annotation
.end method

.method public abstract dispatchV1(Lcom/alipay/android/app/pb/rpc/v1/MspReq;)Lcom/alipay/android/app/pb/rpc/v1/MspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.msp.cashier.dispatch.pb"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation
.end method

.method public abstract dispatchV2(Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;)Lcom/alipay/android/app/pb/rpc/v2/MspResV2;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.msp.cashier.dispatch.pb.v2"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation
.end method

.method public abstract dispatchV3(Lcom/alipay/android/app/pb/rpc/v3/MspReqV3;)Lcom/alipay/android/app/pb/rpc/v3/MspResV3;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.msp.cashier.dispatch.pb.v3"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation
.end method
