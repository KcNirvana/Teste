.class Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;
.super Lcom/xiaomi/accountsdk/request/IPStatHelper;
.source "PassportCATokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getTokenStatHelper"
.end annotation


# instance fields
.field private startTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/IPStatHelper;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->startTime:J

    return-void
.end method


# virtual methods
.method buildDummyUrl(Lcom/xiaomi/account/data/PassportCAToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string p1, "http://dummyurl/getTokenDiagnosis?_ver=%s&_time=%s&_result=%s&hdid=%s"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    new-instance p2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v0, p3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onGetTokenOnlineEnd(Lcom/xiaomi/account/data/PassportCAToken;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->startTime:J

    sub-long/2addr v0, v2

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->buildDummyUrl(Lcom/xiaomi/account/data/PassportCAToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onGetTokenOnlineStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->startTime:J

    return-void
.end method
