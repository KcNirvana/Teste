.class public Lcom/miui/video/service/application/GlobalApplication;
.super Lcom/miui/video/framework/FrameworkApplication;
.source "GlobalApplication.java"


# annotations
.annotation build Lio/github/prototypez/appjoint/core/AppSpec;
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "MiVideoGlobal"

.field public static final APP_THEME:Ljava/lang/String; = "com.miui.video.theme.01"

.field private static final TAG:Ljava/lang/String; = "GlobalApplication"

.field private static mAppContext:Landroid/content/Context;


# instance fields
.field private memoryCacheSizeBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/FrameworkApplication;-><init>()V

    const/high16 v0, 0x6400000

    iput v0, p0, Lcom/miui/video/service/application/GlobalApplication;->memoryCacheSizeBytes:I

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private initAppFilters()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/uri/CUtils;->clearAppFilter()V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/common/CommonFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/common/CommonFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/longvideo/LongVideoFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/longvideo/LongVideoFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/shortvideo/ShortVideoFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/shortvideo/ShortVideoFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/search/OnlineSearchFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/search/OnlineSearchFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/personal/PersonalCenterFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/personal/PersonalCenterFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/ugc/UGCFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/ugc/UGCFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/pgc/PgcFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/pgc/PgcFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/feedback/FeedbackFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/feedback/FeedbackFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/routers/localplayer/LocalPlayerFilter;

    invoke-direct {v1}, Lcom/miui/video/base/routers/localplayer/LocalPlayerFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/uri/CUtils;->addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V

    return-void
.end method

.method private initialize()V
    .locals 11

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/video/base/common/net/config/GlobalNetConfig;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/config/GlobalNetConfig;-><init>()V

    invoke-static {v0}, Lcom/miui/video/base/common/net/config/NetConfigHolder;->init(Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;)V

    new-instance v0, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v0}, Lcom/bumptech/glide/GlideBuilder;-><init>()V

    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    iget v2, p0, Lcom/miui/video/service/application/GlobalApplication;->memoryCacheSizeBytes:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GlideBuilder;->setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/common/library/widget/glide/GlideApp;->init(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    sget-object v1, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v2

    sget-object v3, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    const-string v5, "MiVideoGlobal"

    const-string v7, "com.miui.video.theme.01"

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/miui/video/framework/FrameworkConfig;->initBase(Landroid/content/Context;ILjava/lang/String;ZLjava/lang/String;Z)Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    const-string v1, "MiVideoGlobal"

    const-string v2, "logs"

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/miui/video/framework/FrameworkConfig;->initLogs(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x4e20

    const/16 v8, 0x1000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/miui/video/framework/FrameworkConfig;->initNetwork(IIIIZ)V

    invoke-direct {p0}, Lcom/miui/video/service/application/GlobalApplication;->initAppFilters()V

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/VideoMediationConfig;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-static {v1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-virtual {v1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->asStatisticsHandler()Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->setListener(Lcom/miui/video/framework/utils/statistics/IStatisticsListener;)V

    :cond_0
    invoke-static {}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->getInstance()Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->init()V

    invoke-virtual {p0}, Lcom/miui/video/service/application/GlobalApplication;->initActivityLifecycleListener()V

    const-class v0, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    invoke-static {v0}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/miui/video/base/routers/videoplus/VideoPlusService;->initLocalMediaService(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/video/service/push/MiPushManager;->initMiPush()V

    :cond_2
    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/miui/video/service/update/IAppUpdateMarket;

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    invoke-direct {v3}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;

    invoke-direct {v2}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/video/service/update/AppUpdateUtils;->addAppUpdateMarkets([Lcom/miui/video/service/update/IAppUpdateMarket;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/framework/FrameworkApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/prototypez/appjoint/AppJoint;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/prototypez/appjoint/AppJoint;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/framework/FrameworkApplication;->onCreate()V

    sput-object p0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/service/application/GlobalApplication;->initialize()V

    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/prototypez/appjoint/AppJoint;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/framework/FrameworkApplication;->onLowMemory()V

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/GlideApp;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/prototypez/appjoint/AppJoint;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/prototypez/appjoint/AppJoint;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/framework/FrameworkApplication;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/GlideApp;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    :cond_0
    sget-object v0, Lcom/miui/video/service/application/GlobalApplication;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/GlideApp;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/prototypez/appjoint/AppJoint;->onTrimMemory(I)V

    return-void
.end method
