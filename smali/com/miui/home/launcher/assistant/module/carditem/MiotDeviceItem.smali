.class public Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;
    }
.end annotation


# static fields
.field private static final DEVICE_INFOS:Ljava/lang/String; = "device_infos"

.field private static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final ERROR_LOGIN_FAILED:I = 0x2

.field private static final ERROR_NOT_LOGIN:I = 0x3

.field private static final ERROR_REFRESH_FAILED:I = 0x4

.field private static final MIOT_DEVICE_CTA_PASSED:Ljava/lang/String; = "miot_device_cta_passed"

.field private static final USER_ID:Ljava/lang/String; = "current_uid"


# instance fields
.field private context:Landroid/content/Context;

.field private mAllCardInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field private mCurrentUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCachedDevices:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mAllCardInfo:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->init(Landroid/content/Context;)V

    const-string/jumbo v0, "miot_device_cta_passed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->checkBindService()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyOtherStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCachedDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCachedDevices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyRefresh()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->processRemoteDevice(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mAllCardInfo:Ljava/util/HashMap;

    return-object p1
.end method

.method private notifyCTANotPassed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_cta_not_passed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private notifyOtherStatus()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_other_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private notifyRefresh()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_refresh_finished"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private processRemoteDevice(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCardInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mAllCardInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentState()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    return-object v0
.end method

.method public getDeviceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCachedDevices:Ljava/util/List;

    return-object v0
.end method

.method public onAccountUpdated()V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    sget-object v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentUid:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MiotDevice"

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyOtherStatus()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->startRefreshData()V

    goto :goto_0
.end method

.method public onDeviceUpdated(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceUpdated(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->processRemoteDevice(Landroid/os/Bundle;)V

    return-void
.end method

.method public passCTA()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    const-string/jumbo v1, "miot_device_cta_passed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->startRefreshData()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyOtherStatus()V

    return-void
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startRefresh(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCachedDevices:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentUid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getDeviceListFromMiHome(Lcom/xiaomi/miot/service/ICallback;)V

    return-void
.end method

.method public startRefreshData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyCTANotPassed()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->checkBindService()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyOtherStatus()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->mCurrentState:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->notifyOtherStatus()V

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->isLogin(Lcom/xiaomi/miot/service/ICallback;)V

    goto :goto_0
.end method
