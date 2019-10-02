.class public final Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;
.super Ljava/lang/Object;
.source "MixpanelStatsUtil.java"


# static fields
.field public static final MIXPANEL_API_TOKEN:Ljava/lang/String; = "66fc2206e57d211556cdcabdb57baede"

.field private static final TAG:Ljava/lang/String; = "MixpanelStatsUtil"

.field private static mainHandler:Landroid/os/Handler; = null

.field private static sEnabled:Z = true

.field private static sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 0

    sput-object p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object p0
.end method

.method public static flush()V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V

    :cond_1
    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDistinctId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDistinctId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sEnabled:Z

    return-void
.end method

.method public static track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MixpanelStatsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track, event: new plugin ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "track currentThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    sget-object p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->sMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->trackMap(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
