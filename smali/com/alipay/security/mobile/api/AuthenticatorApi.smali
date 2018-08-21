.class public Lcom/alipay/security/mobile/api/AuthenticatorApi;
.super Ljava/lang/Object;
.source "AuthenticatorApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;
    }
.end annotation


# static fields
.field public static TYPE_BRACELET:I

.field public static TYPE_FINGERPRINT:I

.field private static sSecDataCache:Ljava/lang/String;

.field private static sSecDataValid:J

.field public static sSystemFingerPrintNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    sput v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->TYPE_FINGERPRINT:I

    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->TYPE_BRACELET:I

    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataValid:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method private static getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;
    .locals 12

    const/4 v10, 0x0

    sget-object v11, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-static {v0, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v2

    new-instance v1, Lcom/alipay/security/mobile/api/AuthenticatorApi$1;

    invoke-direct {v1}, Lcom/alipay/security/mobile/api/AuthenticatorApi$1;-><init>()V

    invoke-interface {v2, v0, v1, p3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :try_start_3
    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result v1

    sput v1, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    :cond_2
    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v3

    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    invoke-static {p3}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, p3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v1

    :cond_3
    const/4 v7, 0x6

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    const/4 v7, 0x5

    :cond_4
    new-instance v0, Lcom/alipay/security/mobile/api/BICDataModel;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v2

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v4

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v5

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v6

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v9

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/alipay/security/mobile/api/BICDataModel;-><init>(IIIIIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v10

    goto :goto_0
.end method

.method public static getFastPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFastPayAuthData enter [userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataValid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v5

    sget v6, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    if-lez v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4, v0}, Lcom/alipay/security/mobile/api/BICDataUtil;->toDataJson(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataValid:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFastPayAuthData exit [result:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] [timecost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getFpAAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->getDeviceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFpAAID exit [result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFpServiceErr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/security/mobile/util/LogCollect;->getErr()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPayAuthData enter [userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataValid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPayAuthData exit [result:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] [timecost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v5

    sget v6, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    if-lez v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4, v0}, Lcom/alipay/security/mobile/api/BICDataUtil;->toDataJson(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataValid:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPayAuthData exit [result:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] [timecost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSecDataCache:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRegAuthData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 17

    sget-object v12, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRegAuthData enter [userID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v13, v2, v3, v0}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-static {v13, v2, v3, v0}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v11, :cond_2

    new-instance v2, Lcom/alipay/security/mobile/api/BICDataModel;

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getProtocalType()I

    move-result v6

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getProtocalVersion()I

    move-result v7

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getVendor()I

    move-result v8

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getServiceVersion()I

    move-result v9

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/alipay/security/mobile/api/BICDataModel;->getPhoneModel()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/alipay/security/mobile/api/BICDataModel;-><init>(IIIIIIILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/alipay/security/mobile/api/BICDataUtil;->toDataJson(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRegAuthData exit [result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] [timecost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    monitor-exit v12

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
