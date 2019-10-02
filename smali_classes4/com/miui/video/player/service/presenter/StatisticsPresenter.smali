.class public Lcom/miui/video/player/service/presenter/StatisticsPresenter;
.super Lcom/miui/video/player/service/presenter/BasePresenter;
.source "StatisticsPresenter.java"


# static fields
.field private static final STATISTIC_AT:Ljava/lang/String; = "at"

.field public static final STATISTIC_DATE:Ljava/lang/String; = "date"

.field public static final STATISTIC_DURATION:Ljava/lang/String; = "duration"

.field private static final STATISTIC_FROM:Ljava/lang/String; = "ref"

.field public static final STATISTIC_PLAYED_ALL:Ljava/lang/String; = "played_all"

.field private static final STATISTIC_TYPE:Ljava/lang/String; = "type"

.field private static final STATISTIC_VIDEO_TYPE:Ljava/lang/String; = "video_type"

.field public static final TAG:Ljava/lang/String; = "StatisticsPresenter"

.field public static final TYPE_CLOSE:Ljava/lang/String; = "play__close"

.field public static final TYPE_COMPLETE:Ljava/lang/String; = "play__complete"

.field public static final TYPE_COMPLETE_LAST:Ljava/lang/String; = "play__completelast"

.field public static final TYPE_START_FAIL:Ljava/lang/String; = "play__start_fail"

.field public static final TYPE_START_SUCCESS:Ljava/lang/String; = "play__start_succ"

.field public static final VIDEO_TYPE_LOCAL:Ljava/lang/String; = "local"

.field public static final VIDEO_TYPE_OFFLINE:Ljava/lang/String; = "offline"

.field public static final VIDEO_TYPE_ONLINE:Ljava/lang/String; = "online"


# instance fields
.field private mFromApp:Ljava/lang/String;

.field private mPauseStartTimeStamp:J

.field private mPausedTime:J

.field private mStartTimeStamp:J

.field private mStopTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/BasePresenter;-><init>(Landroid/app/Activity;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStartTimeStamp:J

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStopTimeStamp:J

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPausedTime:J

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mFromApp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->reset()V

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->initFromApp(Landroid/app/Activity;)V

    return-void
.end method

.method private static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v4

    goto :goto_0

    :catch_0
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p1, "unknown"

    :cond_3
    return-object p1
.end method

.method private getPausedTime()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    sub-long v2, v0, v2

    :cond_0
    iget-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPausedTime:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->toSecond(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPlayedTime()J
    .locals 4

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->getPlayedTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getPlayedTimeMillis()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStopTimeStamp:J

    iget-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStopTimeStamp:J

    iget-wide v2, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStartTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v4, 0x337f9800

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method private initFromApp(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mFromApp:Ljava/lang/String;

    return-void
.end method

.method private static toSecond(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public onVideoPause()V
    .locals 2

    const-string v0, "StatisticsPresenter"

    const-string v1, "onVideoPause"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStopTimeStamp:J

    return-void
.end method

.method public onVideoResume()V
    .locals 8

    const-string v0, "StatisticsPresenter"

    const-string v1, "onVideoResume"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPausedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPausedTime:J

    :cond_0
    iput-wide v2, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStartTimeStamp:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mStopTimeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPausedTime:J

    iput-wide v0, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mPauseStartTimeStamp:J

    return-void
.end method

.method public sendStatistic(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->sendStatistic(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public sendStatistic(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->getPlayedTime()J

    move-result-wide v0

    if-nez p5, :cond_0

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v2, "type"

    invoke-interface {p5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    invoke-static {p3, p4}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->toSecond(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "video_type"

    invoke-interface {p5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ref"

    iget-object p4, p0, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->mFromApp:Ljava/lang/String;

    invoke-interface {p5, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "played_all"

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->getPlayedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p5, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-boolean p4, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz p4, :cond_1

    const-string p4, "v2_player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2, v0, v1, p3}, Lcom/miui/video/base/common/statistics/MiDevUtils;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const-string p3, "StatisticsPresenter"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " videoType = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", map: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/4 p4, 0x2

    aput p4, p2, p3

    invoke-static {p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result p2

    invoke-static {p1, p5, p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
