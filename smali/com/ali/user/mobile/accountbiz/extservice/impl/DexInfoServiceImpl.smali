.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "DexInfoServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;


# static fields
.field private static mDexInfoService:Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;


# instance fields
.field private rRAService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getRSAService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->rRAService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->mDexInfoService:Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->mDexInfoService:Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->mDexInfoService:Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->mDexInfoService:Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDexHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/inside/security/f;

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/security/f;-><init>(Landroid/content/ContextWrapper;)V

    const-string/jumbo v1, "alipaysalt"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/security/f;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/inside/security/c;

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/security/c;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/android/phone/inside/security/c;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/phone/inside/security/c;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDexHash exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "StackTrace"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTaobaoBlackBoxInfo()Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;
    .locals 8

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;-><init>()V

    :try_start_0
    new-instance v3, Lcom/alipay/android/phone/inside/security/e;

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v1}, Lcom/alipay/android/phone/inside/security/e;-><init>(Landroid/content/ContextWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->rRAService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/RSAService;->getSafeRSATS()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->secTS:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/alipay/android/phone/inside/security/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->clientDigest:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SecurityCheck exception"

    iput-object v2, v0, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->clientDigest:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "StackTrace"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "secTS exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->secTS:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v4, "StackTrace"

    invoke-static {v4, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clientDigest exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService$TaobaoBlackBoxInfo;->clientDigest:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "StackTrace"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
