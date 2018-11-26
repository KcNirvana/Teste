.class public abstract Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.super Lcom/miui/common/a/a/k;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficRelatedFragment"


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field protected mServiceConnected:Z

.field protected mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field protected mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

.field protected mSlotNum:I

.field protected mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->isAttatched()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/miui/common/a/a/k;-><init>()V

    new-array v0, v1, [Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    new-array v0, v1, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/k;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sim_slot_num_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_2

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->resetTitle()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->bindTrafficManageService()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInsertedOne()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/k;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->showSecurityCenterAllowNetwork(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->unbindTrafficManageService()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onPause()V

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onTrafficManageServiceConnected()V
.end method

.method protected resetTitle()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method
