.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "RSAServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/RSAService;


# static fields
.field private static final TAG:Ljava/lang/String; = "RSAServiceImpl"

.field private static mRsaService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

.field private static rsaPkData:Ljava/lang/String;

.field private static rsaTSData:Ljava/lang/String;


# instance fields
.field private mSafeRSAServerTS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaPkData:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RSAService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mRsaService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mRsaService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mRsaService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mRsaService:Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

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
.method public RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->getRsaKey()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "RSAServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rsa\u516c\u94a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaPkData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";rsa\u516c\u94a5\u65f6\u95f4\u6233\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaPkData:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string/jumbo v0, "RSAServiceImpl"

    const-string/jumbo v1, "\u83b7\u53d6rsa\u516c\u94a5\u6210\u529f\uff0c\u8fdb\u884c\u5bc6\u7801\u52a0\u5bc6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaPkData:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RSAServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u83b7\u53d6rsa\u516c\u94a5\u6210\u529f\uff0c\u8fdb\u884c\u5bc6\u7801\u52a0\u5bc6 encryptCurrentPwd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RSAServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{[info=RSAEncrypt],[msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v1, "RSAServiceImpl"

    const-string/jumbo v2, "\u83b7\u53d6rsa\u516c\u94a5\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRsaKey()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const-string/jumbo v0, "RSAServiceImpl"

    const-string/jumbo v1, "\u83b7\u53d6rsa\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "RSAServiceImpl"

    const-string/jumbo v1, "\u672c\u5730\u65e0\u7f13\u5b58\u516c\u94a5\u4fe1\u606f\u5b58\u5728\uff0c\u8bf7\u6c42\u670d\u52a1\u5668\u83b7\u53d6\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GetRSAPKeyApi;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/GetRSAPKeyApi;

    invoke-interface {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/GetRSAPKeyApi;->getRsaKey()Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    sput-object v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaPkData:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaTS:Ljava/lang/String;

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    sget-object v2, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mSafeRSAServerTS:J

    :cond_0
    const-string/jumbo v0, "RSAServiceImpl"

    const-string/jumbo v1, "\u4ece\u670d\u52a1\u5668\u83b7\u53d6rsa\u6210\u529f\u8fd4\u56de"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaPkData:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RSAServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bf7\u6c42 rsa \u670d\u52a1\u5668\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsaTS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->getRsaKey()Ljava/lang/String;

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->rsaTSData:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSafeRSATS()J
    .locals 4

    iget-wide v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mSafeRSAServerTS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mSafeRSAServerTS:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->getRsaKey()Ljava/lang/String;

    iget-wide v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->mSafeRSAServerTS:J

    goto :goto_0
.end method
