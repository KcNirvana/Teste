.class public interface abstract Lcom/ali/user/mobile/rpc/facade/MobileRegFacade;
.super Ljava/lang/Object;
.source "MobileRegFacade.java"


# virtual methods
.method public abstract getCountyCode(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.countryCodeProcesser"
    .end annotation
.end method

.method public abstract sendSms(Lcom/ali/user/mobile/rpc/vo/mobilegw/SendSmsGwReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/SmsGwRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.sms.sendSms"
    .end annotation
.end method

.method public abstract supplementV2(Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.completeProcesserV2"
    .end annotation
.end method
