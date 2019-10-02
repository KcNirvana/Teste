.class public Lcom/miui/video/service/update/mimarket/MiMarketUpdate;
.super Lcom/miui/video/service/update/IAppUpdateMarket;
.source "MiMarketUpdate.java"


# static fields
.field private static TAG:Ljava/lang/String; = "MiMarketUpdate"


# instance fields
.field private canceled:Z

.field private mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/update/IAppUpdateMarket;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->canceled:Z

    return-void
.end method

.method private getAutoUpdateStatus(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.xiaomi.discover.preferences"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    const-string v0, "getAutoUpdate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "autoUpdate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCurrentDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initXiaomiUpdateAgent()V
    .locals 2

    new-instance v0, Lcom/miui/video/service/update/mimarket/-$$Lambda$MiMarketUpdate$taI9kEQSl4Y6BPNeayGmI4uJCc8;

    invoke-direct {v0, p0}, Lcom/miui/video/service/update/mimarket/-$$Lambda$MiMarketUpdate$taI9kEQSl4Y6BPNeayGmI4uJCc8;-><init>(Lcom/miui/video/service/update/mimarket/MiMarketUpdate;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->setUpdateAutoPopup(Z)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->setUseInternationalHost(Z)V

    invoke-static {v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V

    return-void
.end method

.method private isCurrentRegionNeedAsk(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.xiaomi.discover.preferences"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    const-string v0, "isMeteredUpdateConfirmNeededByRegion"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isMeteredUpdateConfirmNeededByRegion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$initXiaomiUpdateAgent$21(Lcom/miui/video/service/update/mimarket/MiMarketUpdate;ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->setCanceled()V

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->canceled:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public setCanceled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->canceled:Z

    return-void
.end method

.method public setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public show4GAutoUpdate(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.action.METERED_UPDATE_CONFIRM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "showWhenRejected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/AppUtils;->haveAppSupportIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->isCurrentRegionNeedAsk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->getAutoUpdateStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "last_ask_4g_update"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->getCurrentDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "last_ask_4g_update"

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startCheckVersion(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mimarket://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1, v1}, Lcom/miui/video/framework/utils/AppUtils;->haveAppSupportIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->initXiaomiUpdateAgent()V

    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->update(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startUpdate(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->show4GAutoUpdate(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mimarket://details?id=%s&startDownload=true&back=true"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v1, Lcom/miui/video/framework/miui/code/MiMarketCode;->XIAOMI_MARKET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
