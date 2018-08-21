.class public Lcom/miui/personalassistant/provider/TransmissionProxy;
.super Ljava/lang/Object;
.source "TransmissionProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TransmissionProxy"

.field private static volatile sInstance:Lcom/miui/personalassistant/provider/TransmissionProxy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/provider/TransmissionProxy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/TransmissionProxy;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/provider/TransmissionProxy;->sInstance:Lcom/miui/personalassistant/provider/TransmissionProxy;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/provider/TransmissionProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/provider/TransmissionProxy;->sInstance:Lcom/miui/personalassistant/provider/TransmissionProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/provider/TransmissionProxy;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/provider/TransmissionProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/provider/TransmissionProxy;->sInstance:Lcom/miui/personalassistant/provider/TransmissionProxy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/provider/TransmissionProxy;->sInstance:Lcom/miui/personalassistant/provider/TransmissionProxy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private goDidi([Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "TransmissionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "goDidi args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "fromlat"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "fromlng"

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "fromaddr"

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "fromname"

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "tolat"

    const/4 v3, 0x4

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "tolng"

    const/4 v3, 0x5

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "toaddr"

    const/4 v3, 0x6

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "toname"

    const/4 v3, 0x7

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "biz"

    const/16 v3, 0x8

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "maptype"

    const/16 v3, 0x9

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.DIDI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "intent_didi_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "intent_didi_type"

    const-string/jumbo v3, "didi_end_sets"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private recordClickButtonCountEvent([Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    aget-object v5, p1, v6

    const/4 v6, 0x1

    aget-object v3, p1, v6

    const/4 v6, 0x2

    aget-object v1, p1, v6

    const/4 v6, 0x3

    aget-object v2, p1, v6

    const/4 v6, 0x4

    aget-object v0, p1, v6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "CARD_ID"

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "CARD_NAME"

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "BUTTON_NAME"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private recordClickItemCountEvent([Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    aget-object v7, p1, v8

    const/4 v8, 0x1

    aget-object v3, p1, v8

    const/4 v8, 0x2

    aget-object v0, p1, v8

    const/4 v8, 0x3

    aget-object v1, p1, v8

    const/4 v8, 0x4

    aget-object v2, p1, v8

    const/4 v8, 0x5

    aget-object v4, p1, v8

    const/4 v8, 0x6

    aget-object v6, p1, v8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v8, "CARD_ID"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "CARD_NAME"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "ITEM_NAME"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "ITEM_LOCATION_ID"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "ITEM_SOURCE"

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private recordPageEndAndSessionStart([Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    aget-object v0, p1, v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "MIUI_VERSION"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/personalassistant/util/Util;->MIUI_VERSION_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "DEVICE_MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "APP_VERSION"

    iget-object v3, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Util;->getAppInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "CARD_QUANTITY"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Audience"

    const-string/jumbo v3, "session_start"

    invoke-static {v2, v3, v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/util/MiStatUtil;->recordPageEnd()V

    return-void
.end method

.method private recordPageStartAndAppOpen([Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    aget-object v0, p1, v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "MIUI_VERSION"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/personalassistant/util/Util;->MIUI_VERSION_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "DEVICE_MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "APP_VERSION"

    iget-object v3, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Util;->getAppInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "CARD_QUANTITY"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "main_page"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/MiStatUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "Audience"

    const-string/jumbo v3, "app_open"

    invoke-static {v2, v3, v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/MiStatUtil;->recordAllDailyState(Landroid/content/Context;)V

    return-void
.end method

.method private recordScreenCardCountEvent([Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    aget-object v8, p1, v9

    const/4 v9, 0x1

    aget-object v4, p1, v9

    const/4 v9, 0x2

    aget-object v5, p1, v9

    const/4 v9, 0x3

    aget-object v1, p1, v9

    const/4 v9, 0x4

    aget-object v7, p1, v9

    const/4 v9, 0x5

    aget-object v2, p1, v9

    const/4 v9, 0x6

    aget-object v0, p1, v9

    const/4 v9, 0x7

    aget-object v3, p1, v9

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "CARD_LOCATION_ID"

    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "CARD_ITEM_QUANTITY"

    invoke-virtual {v6, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "CARD_ITEM_SEQUENCE"

    invoke-virtual {v6, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "CARD_ITEM_CONTENT"

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "CARD_ITEM_IS_SHRINK"

    invoke-virtual {v6, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "CARD_APP_SOURCE"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v8, v4, v6}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private updateShopping([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string/jumbo v2, "price"

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->updateFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Home"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/MiStatUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/personalassistant/provider/TransmissionProxy;->onQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TransmissionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initQuery method Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "TransmissionProxy"

    const-string/jumbo v3, "Method is null"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "checkVersionUpgrade"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/util/DownloadHelper;->getInstance()Lcom/miui/personalassistant/util/DownloadHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/util/DownloadHelper;->upgrade(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "installApkUpgrade"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, p4}, Lcom/miui/personalassistant/util/Util;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "trackOnClickItemEvent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->recordClickItemCountEvent([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "trackSingleEvent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "trackOnClickButtonEvent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->recordClickButtonCountEvent([Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "track_page_end"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->recordPageEndAndSessionStart([Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "track_screen_cards_event"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->recordScreenCardCountEvent([Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "track_page_start"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->recordPageStartAndAppOpen([Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v2, "getCurrentLocation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/GeoLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->getLocation()Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/personalassistant/util/LocationUtil;->sendLocation(Landroid/content/Context;Landroid/location/Location;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "getEtaInfo"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/GeoLocationManager;

    move-result-object v2

    invoke-virtual {v2, p4, p1}, Lcom/miui/personalassistant/util/GeoLocationManager;->getEtaLineInfo(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "agenda_method"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/provider/AgendaProvider;->queryAgenda(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "functin_alipay_sdk"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/AlipayController;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/AlipayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/util/AlipayController;->startGoAlipaySdk()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "init_cta"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/Util;->initCtaSdk(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "go_didi"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->goDidi([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "catcher_switch"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    aget-object v0, p1, v5

    const-string/jumbo v2, "Express"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v3}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchExpressCatcher(Z)V

    :cond_10
    :goto_1
    const-string/jumbo v2, "TransmissionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " category "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "Payment"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v3}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchPaymentCatcher(Z)V

    goto :goto_1

    :cond_12
    const-string/jumbo v2, "Favorite"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v3}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    goto :goto_1

    :cond_13
    const-string/jumbo v2, "Shopping"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v3}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchShoppingCatcher(Z)V

    goto :goto_1

    :cond_14
    const-string/jumbo v2, "function_start_app"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-static {v3}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/QuickStartUtil;->startAppByFunction(Landroid/content/Context;Lcom/miui/personalassistant/model/FunctionLaunch;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v2, "fav_app_open"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisAppOpen(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v2, "show_toast"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/miui/personalassistant/util/ThreadDispatcher;->getInstance()Lcom/miui/personalassistant/util/ThreadDispatcher;

    new-instance v2, Lcom/miui/personalassistant/provider/TransmissionProxy$1;

    invoke-direct {v2, p0, p4}, Lcom/miui/personalassistant/provider/TransmissionProxy$1;-><init>(Lcom/miui/personalassistant/provider/TransmissionProxy;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v2, "leave_minus"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/miui/voicesdk/VoiceAssistManager;->getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;

    move-result-object v2

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v5, v4}, Lcom/miui/voicesdk/IVoiceAssistManager;->updateService(Landroid/content/Context;ZLcom/miui/voicesdk/ActionCallback;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v2, "shoppingUpdate"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->updateShopping([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "update_world_cup_data"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v3

    aget-object v2, p1, v5

    const-class v4, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-virtual {v3, v2}, Lcom/miui/personalassistant/model/BallDataManager;->setWorldCup(Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v2, "TransmissionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " query error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->ensureCtaInited(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/personalassistant/provider/TransmissionProxy$2;-><init>(Lcom/miui/personalassistant/provider/TransmissionProxy;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
