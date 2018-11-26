.class public Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

.field private mSmsNumberWhiteList:Ljava/util/ArrayList;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PurchaseSmsManager"

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    new-instance v0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getPurchaseSmsNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->getSmsNumberList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    return-void
.end method

.method private getSlotIdExtra(Landroid/content/Intent;I)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "miui.telephony.SubscriptionManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getSlotIdExtra"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btV()I

    move-result v0

    return v0
.end method


# virtual methods
.method checkContainReceiveNumber(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+86"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->removePhoneNumPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PurchaseSmsManager"

    const-string/jumbo v2, "mina checkContainReceiveNumber"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method checkPurchaseSmsNumberWhiteList()V
    .locals 4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getPurchaseSmsNumberUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;-><init>(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method getSlotIdFromIntent(Landroid/content/Intent;)I
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/miui/networkassistant/dual/Sim;->MAX_SLOT_COUNT:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "PurchaseSmsManager"

    const-string/jumbo v2, "getSlotIdFromIntent slotId < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
