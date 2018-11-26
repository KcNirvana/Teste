.class public Lcom/miui/networkassistant/traffic/purchase/CooperationManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CooperationManager"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateNaTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/LoadConfigUtil;->isDataUsagePurchaseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATrafficPurchaseAvailable()Z

    move-result v0

    :goto_0
    const-string/jumbo v2, "CooperationManager"

    const-string/jumbo v3, "mina isTrafficPurchaseAvailable:%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static navigationToTrafficPurchasePage(Landroid/app/Activity;Lcom/miui/networkassistant/config/SimUserInfo;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATrafficPurchaseAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;->launchUrl(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;->launchUrl(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static updateNaTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z
    .locals 9

    const-wide/32 v6, 0x5265c00

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "CooperationManager"

    const-string/jumbo v1, "mina updateNaTrafficPurchaseStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->checkRichPurchaseOnlineResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->isResponsed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->isOnline()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getOldAge()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_0
    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getmOrderTips()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseOrderTips(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getOrderType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseType(I)Z

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseAvailable(Z)Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseAvailableUpdateTime(J)Z

    invoke-virtual {v4}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getPurchaseActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "NOACTIVITY"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getPurchaseActivityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v8}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->savePurchaseActivityId(Ljava/lang/String;)Z

    :goto_1
    invoke-static {p0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    const-string/jumbo v0, "CooperationManager"

    const-string/jumbo v1, "mina updateNaTrafficPurchaseStatus updated, result:%b"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_2
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "CooperationManager"

    const-string/jumbo v1, "mina updateNaTrafficPurchaseStatus no response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_2
.end method

.method private static updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;-><init>(Lcom/miui/networkassistant/config/SimUserInfo;ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
