.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "DeviceServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;


# static fields
.field private static mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;


# instance fields
.field final TAG:Ljava/lang/String;

.field deviceCallBack:Lcom/ali/user/mobile/account/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "DeviceServiceImpl"

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private queryMspTid()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;
    .locals 10

    const-string/jumbo v0, "DeviceServiceImpl"

    const-string/jumbo v1, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid \u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;-><init>()V

    const-string/jumbo v0, "com.alipay.android.phone.inside.PHONE_CASHIER_GET_TID"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/framework/service/a;->startForResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid=null"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v2, "Tid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TidSeed"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IMEI"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "IMSI"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "VirtualImei"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "VirtualImsi"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid=%s, key=%s, imei=%s, imsi=%s, vimei=%s, vimsi=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    aput-object v6, v8, v9

    const/4 v9, 0x5

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "DeviceServiceImpl"

    invoke-static {v8, v7}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadOrCreateTID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->setImei(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->setMspkey(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->setTid(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->setVimsi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceServiceImpl"

    const-string/jumbo v3, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid \u5931\u8d25\uff0c\u53ef\u80fd\u672a\u5b89\u88c5\u6700\u65b0\u79fb\u52a8\u5feb\u6377"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;
    .locals 2

    const-string/jumbo v0, "DeviceServiceImpl"

    const-string/jumbo v1, "queryCertification"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->queryMspTid()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public queryDeviceInfo()Lcom/ali/user/mobile/account/bean/DeviceInfoBean;
    .locals 2

    const-string/jumbo v0, "DeviceServiceImpl"

    const-string/jumbo v1, "queryDeviceInfo-\u76f4\u63a5\u4ece\u5feb\u6377\u83b7\u53d6mspTid"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;->setWalletTid(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
