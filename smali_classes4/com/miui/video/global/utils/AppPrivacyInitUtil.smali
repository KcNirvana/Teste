.class public Lcom/miui/video/global/utils/AppPrivacyInitUtil;
.super Ljava/lang/Object;
.source "AppPrivacyInitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/global/utils/AppPrivacyInitUtil$InstanceHolder;
    }
.end annotation


# static fields
.field public static final REQUEST_PRIVACY_CODE:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/global/utils/AppPrivacyInitUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/global/utils/AppPrivacyInitUtil;
    .locals 1

    invoke-static {}, Lcom/miui/video/global/utils/AppPrivacyInitUtil$InstanceHolder;->access$000()Lcom/miui/video/global/utils/AppPrivacyInitUtil;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$startInit$3(Lcom/miui/video/global/utils/AppPrivacyInitUtil;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p2

    const-string v0, "privacy_switch_key"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;->handlerRequestResult(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$startInit$4(Lcom/miui/video/global/utils/AppPrivacyInitUtil;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;->handlerRequestResult(Landroid/app/Activity;)V

    return-void
.end method

.method private startLocalVideo(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    invoke-static {v0}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/base/routers/videoplus/VideoPlusService;->startVideoPlusMainActivity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private startOnlineVideo(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/video/global/activity/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handlerRequestResult(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-static {v1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-virtual {v1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->asStatisticsHandler()Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->setListener(Lcom/miui/video/framework/utils/statistics/IStatisticsListener;)V

    invoke-direct {p0, p1}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;->startOnlineVideo(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;->startLocalVideo(Landroid/app/Activity;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startInit(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;->handlerRequestResult(Landroid/app/Activity;)V

    return-void
.end method
