.class public Lcom/xiaomi/accountsdk/request/IPStatHelper;
.super Ljava/lang/Object;
.source "IPStatHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNetworkName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/NetworkUtils;->getNetworkNameForMiUrlStat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStatInterface()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    return-object v0
.end method

.method protected statCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStatHelper;->getStatInterface()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected statDummyUrl(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/VersionUtils;->isMiuiStableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStatHelper;->getStatInterface()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->statHttpEvent(Ljava/lang/String;J)V

    return-void
.end method
