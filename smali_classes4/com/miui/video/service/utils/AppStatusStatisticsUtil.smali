.class public Lcom/miui/video/service/utils/AppStatusStatisticsUtil;
.super Ljava/lang/Object;
.source "AppStatusStatisticsUtil.java"


# static fields
.field private static final EVENT_ONLINE_EXIT_QUIT:Ljava/lang/String; = "online_exit_quit"

.field private static final EVENT_ONLINE_START_ALIVE:Ljava/lang/String; = "online_start_alive"

.field private static final EVENT_ONLINE_START_UP:Ljava/lang/String; = "online_start_up"

.field private static final KEY_LAST_LOCAL_TIME_MILLIS:Ljava/lang/String; = "LAST_LOCAL_TIME_MILLIS"

.field private static final KEY_LAST_ONLINE_TIME_MILLIS:Ljava/lang/String; = "LAST_ONLINE_TIME_MILLIS"

.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final SOURCE_LOCAL_START:Ljava/lang/String; = "local_start"

.field private static final SOURCE_ONLINE_START:Ljava/lang/String; = "online_start"

.field private static final SOURCE_PUSH_START:Ljava/lang/String; = "push_start"

.field private static final SOURCE_SELF_START:Ljava/lang/String; = "self_start"

.field private static final TAG:Ljava/lang/String; = "AppStatusStatisticsUtil"

.field private static sInstance:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;


# instance fields
.field private isAppForeground:Z

.field private mAppStatusChangedListener:Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;

.field private mLastOnResumeLocalMillis:J

.field private mLastOnResumeOnlineMillis:J

.field private mLocalTotalMillis:J

.field private mOnlineTotalMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-direct {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;-><init>()V

    sput-object v0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->sInstance:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mOnlineTotalMillis:J

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLocalTotalMillis:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isAppForeground:Z

    new-instance v0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;-><init>(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    iput-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mAppStatusChangedListener:Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->resetTimeTotal()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->startSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->updateLastOnlineResumeTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isFirstStart(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->track(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isAppForeground:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isAppForeground:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mOnlineTotalMillis:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mOnlineTotalMillis:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLocalTotalMillis:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLocalTotalMillis:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isLocalActivity(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->updateLastLocalResumeTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isOnlineActivity(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private beyondOneDay(J)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getInstance()Lcom/miui/video/service/utils/AppStatusStatisticsUtil;
    .locals 1

    sget-object v0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->sInstance:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    return-object v0
.end method

.method private getLastLocalResumeTimeFromSP()J
    .locals 4

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "LAST_LOCAL_TIME_MILLIS"

    iget-wide v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastOnlineResumeTimeFromSP()J
    .locals 4

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "LAST_ONLINE_TIME_MILLIS"

    iget-wide v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getStartFrom(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/miui/video/framework/uri/PageInfoUtils;->getAppOnlineStartRef()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatusStatisticsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFrom  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private isFirstStart(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    const-string v0, "no"

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isOnlineActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isOnlineFirstTime()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isLocalActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isLocalFirstTime()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string v0, "yes"

    :cond_2
    return-object v0
.end method

.method private isLocalActivity(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalleryPlayerActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LocalPlayerActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VideoLocalActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LauncherActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isLocalFirstTime()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    invoke-direct {p0, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->beyondOneDay(J)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->getLastLocalResumeTimeFromSP()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->beyondOneDay(J)Z

    move-result v0

    return v0
.end method

.method private isOnlineActivity(Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isLocalActivity(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isOnlineFirstTime()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    invoke-direct {p0, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->beyondOneDay(J)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->getLastOnlineResumeTimeFromSP()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->beyondOneDay(J)Z

    move-result v0

    return v0
.end method

.method private isPushActivity(Landroid/app/Activity;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->getStartFrom(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Push"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$updateLastLocalResumeTime$19(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 4

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "LAST_LOCAL_TIME_MILLIS"

    iget-wide v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic lambda$updateLastOnlineResumeTime$18(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 4

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "LAST_ONLINE_TIME_MILLIS"

    iget-wide v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveLong(Ljava/lang/String;J)V

    return-void
.end method

.method private resetTimeTotal()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLocalTotalMillis:J

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mOnlineTotalMillis:J

    return-void
.end method

.method private startSource(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    const-string v0, "self_start"

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isLocalActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "local_start"

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->isPushActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "push_start"

    :cond_1
    :goto_0
    return-object v0
.end method

.method private track(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method private updateLastLocalResumeTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeLocalMillis:J

    new-instance v0, Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$VFRe0iLc66FS5Uth_dRyvji-UXI;

    invoke-direct {v0, p0}, Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$VFRe0iLc66FS5Uth_dRyvji-UXI;-><init>(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateLastOnlineResumeTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mLastOnResumeOnlineMillis:J

    new-instance v0, Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$GUbEC9jjQqbmglT-QLHrh83SSJo;

    invoke-direct {v0, p0}, Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$GUbEC9jjQqbmglT-QLHrh83SSJo;-><init>(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->mAppStatusChangedListener:Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;

    invoke-static {v0}, Lcom/miui/video/framework/FrameworkApplication;->addAppStatusChangedListener(Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;)V

    return-void
.end method
