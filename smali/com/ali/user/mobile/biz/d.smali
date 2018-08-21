.class Lcom/ali/user/mobile/biz/d;
.super Ljava/lang/Object;
.source "AliUserSdkLoginBiz.java"

# interfaces
.implements Lcom/ali/user/mobile/login/a/a;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/d;->a:Lcom/ali/user/mobile/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V
    .locals 5

    invoke-static {}, Lcom/ali/user/mobile/biz/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDexInfoService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;->getTaobaoBlackBoxInfo()Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v3, "clientDigest"

    iget-object v4, v1, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->clientDigest:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v3, "secTS"

    iget-object v1, v1, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->secTS:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipaysalt"

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;->getDexHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v3, "dexTime"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "dexValue"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
