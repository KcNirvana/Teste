.class Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "MixpanelActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final CHECK_DELAY:I = 0x1f4

.field private static sStartSessionTime:Ljava/lang/Double;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private final mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private final mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private mPaused:Z


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/MPConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mIsForeground:Z

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mPaused:Z

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    sget-object p1, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->sStartSessionTime:Ljava/lang/Double;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->sStartSessionTime:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mIsForeground:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mIsForeground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mPaused:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->sStartSessionTime:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object p0
.end method

.method private trackCampaignOpenedIfNeeded(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "mp_campaign_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mp_message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mp_campaign_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp_message_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string p1, "campaign_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message_type"

    const-string v0, "push"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v0, "$app_open"

    invoke-virtual {p1, v0, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method protected getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected isInForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mIsForeground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mPaused:Z

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks$1;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getAutoShowMixpanelUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    invoke-interface {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->joinExperimentIfAvailable()V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mPaused:Z

    iget-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mIsForeground:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mIsForeground:Z

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->sStartSessionTime:Ljava/lang/Double;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->onForeground()V

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->trackCampaignOpenedIfNeeded(Landroid/content/Intent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getAutoShowMixpanelUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->showNotificationIfAvailable(Landroid/app/Activity;)V

    :cond_0
    new-instance v0, Lcom/mixpanel/android/viewcrawler/GestureTracker;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;->mMpInstance:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/viewcrawler/GestureTracker;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
