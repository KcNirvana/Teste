.class public Lcom/alipay/android/barcode/b;
.super Ljava/lang/Object;
.source "OtpManager.java"


# static fields
.field private static final c:Lcom/alipay/android/barcode/b;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/barcode/b;

    invoke-direct {v0}, Lcom/alipay/android/barcode/b;-><init>()V

    sput-object v0, Lcom/alipay/android/barcode/b;->c:Lcom/alipay/android/barcode/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/alipay/android/barcode/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/barcode/b;->c:Lcom/alipay/android/barcode/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;,
            Lcom/alipay/android/barcode/ex/InvalidUserException;,
            Lcom/alipay/android/barcode/ex/InvalidTidException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "otp_userId"

    invoke-interface {v0, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "inside"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", storeUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/android/barcode/ex/InvalidUserException;

    invoke-direct {v0}, Lcom/alipay/android/barcode/ex/InvalidUserException;-><init>()V

    throw v0

    :cond_1
    invoke-static {v9}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "otp_tid"

    invoke-interface {v0, v3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v0, Lcom/alipay/android/barcode/ex/InvalidTidException;

    invoke-direct {v0}, Lcom/alipay/android/barcode/ex/InvalidTidException;-><init>()V

    throw v0

    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/alipay/android/barcode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "otp_token is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v1, "otp_pid"

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "otp_appid"

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "alipay_inside_keys"

    const-string/jumbo v1, "server_timespan"

    const-string/jumbo v3, "0"

    invoke-static {v0, v1, v3}, Lcom/alipay/android/phone/inside/e/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v0, v10, [Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object v4, v0, v9

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otp_token_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-interface {v3, v2, v8, v1, v0}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->getOtp(Ljava/lang/String;I[Ljava/lang/String;[[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/alipay/android/barcode/b;->a:Ljava/lang/String;

    :cond_5
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "OtpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "############ checkAndGetBarcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object v4, v0, v9

    aput-object p1, v0, v10

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;,
            Lcom/alipay/android/barcode/ex/InvalidUserException;,
            Lcom/alipay/android/barcode/ex/InvalidTidException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/inside/barcode/gen/a;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/barcode/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_2

    const-string/jumbo v0, ""

    move-object v2, v0

    :goto_1
    if-nez v3, :cond_3

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_2
    if-nez v3, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "payCode"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "channelFullName"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "channelTips"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "logoUrl"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->c()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->d()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alipay/android/barcode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "otp_pid"

    invoke-interface {v5, v6, p1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "otp_appid"

    invoke-interface {v5, v6, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v6, "otp_userId"

    invoke-interface {v5, v6, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "otp_tid"

    invoke-interface {v5, v2, v3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "alipay_inside_keys"

    const-string/jumbo v3, "server_timespan"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v6, p4, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/alipay/android/phone/inside/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "otp_token_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-interface {v2, v3, p3, v4, v5}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "OtpManager"

    const-string/jumbo v4, "############ updateOtp success!"

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "OtpManager"

    const-string/jumbo v4, "updateOtp"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;,
            Lcom/alipay/android/barcode/ex/InvalidUserException;,
            Lcom/alipay/android/barcode/ex/InvalidTidException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    sget-object v3, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/alipay/android/barcode/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    sget-object v3, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->e()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/inside/barcode/gen/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;,
            Lcom/alipay/android/barcode/ex/InvalidUserException;,
            Lcom/alipay/android/barcode/ex/InvalidTidException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/barcode/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    const-string/jumbo v1, "otp_userId"

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "otp_tid"

    invoke-interface {v0, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "otp_userId"

    invoke-interface {v0, v3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V

    const-string/jumbo v3, "otp_tid"

    invoke-interface {v0, v3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otp_token_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/barcode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/barcode/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->isTokenExisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->removeToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "OtpManager"

    const-string/jumbo v3, "deleteSeed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
