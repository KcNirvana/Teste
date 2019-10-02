.class public Lcom/miui/msa/internal/adjump/AdJumpTracker;
.super Ljava/lang/Object;
.source "AdJumpTracker.java"


# static fields
.field public static final AD_NEW_SDKEVENT_CONFIG_KEY:Ljava/lang/String; = "miglobaladsdk_commonapp"

.field private static final EVENT_JUMP_FAIL:Ljava/lang/String; = "jump_fail"

.field private static final EVENT_JUMP_SUCCESS:Ljava/lang/String; = "jump_success"

.field public static final EVENT_NAME:Ljava/lang/String; = "JUMP_STATS_INFO"

.field private static final KEY_AD_ID:Ljava/lang/String; = "id"

.field private static final KEY_AD_JUMP_VERSION:Ljava/lang/String; = "v"

.field private static final KEY_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_DOWNLOAD_PKG:Ljava/lang/String; = "ad_pk"

.field private static final KEY_DSP:Ljava/lang/String; = "dsp"

.field private static final KEY_EVENT:Ljava/lang/String; = "e"

.field private static final KEY_FINAL_URL:Ljava/lang/String; = "destination"

.field private static final KEY_JUMP_COST:Ljava/lang/String; = "jump_cost"

.field private static final KEY_JUMP_COUNT:Ljava/lang/String; = "jump_ct"

.field private static final KEY_JUMP_DETAIL:Ljava/lang/String; = "jump_detail"

.field private static final KEY_JUMP_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_JUMP_MODE:Ljava/lang/String; = "jump_mode"

.field private static final KEY_MIUI_VERSION:Ljava/lang/String; = "miui_version"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_ORIGINAL_URL:Ljava/lang/String; = "source"

.field private static final KEY_VERSION:Ljava/lang/String; = "asv"

.field private static final SHOULD_SENT_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdJumpTracker"

.field public static final TRACK_PACKAGE:Ljava/lang/String; = "com.xiaomi.miglobaladsdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)Lcom/xiaomi/analytics/Action;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->buildCommonJumpAction(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/xiaomi/analytics/Action;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackAction(Landroid/content/Context;Lcom/xiaomi/analytics/Action;)V

    return-void
.end method

.method private static buildCommonJumpAction(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)Lcom/xiaomi/analytics/Action;
    .locals 3

    const-string v0, "JUMP_STATS_INFO"

    invoke-static {v0}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v0

    const-string v1, "v"

    sget-object v2, Lcom/miui/msa/internal/adjump/SDKConfig;->SDK_VERSION:Lcom/miui/msa/internal/adjump/Version;

    invoke-virtual {v2}, Lcom/miui/msa/internal/adjump/Version;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v1, "asv"

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string v0, "jump_mode"

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getJumpMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string v0, "mode"

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getMode()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "source"

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "jump_ct"

    invoke-virtual {p3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->getJumpCount()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "jump_cost"

    invoke-virtual {p3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->getJumpCost()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "id"

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getAdId()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "jump_detail"

    invoke-virtual {p3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->getJumpDetail()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "ad_pk"

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getDownloadPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "device"

    sget-object p3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "miui_version"

    const-string p3, "ro.miui.ui.version.name"

    const-string v0, "UNKNOWN"

    invoke-static {p3, v0}, Lcom/miui/msa/internal/adjump/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    const-string p2, "dsp"

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getDspName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object p0

    return-object p0
.end method

.method private static getTrackIdType(Landroid/content/Context;)Lcom/xiaomi/analytics/LogEvent$IdType;
    .locals 0

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->isGaidEnableInCurrentRegion(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    return-object p0
.end method

.method private static trackAction(Landroid/content/Context;Lcom/xiaomi/analytics/Action;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    const-string v1, "miglobaladsdk_commonapp"

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v0

    const-string v1, "com.xiaomi.miglobaladsdk"

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->getTrackIdType(Landroid/content/Context;)Lcom/xiaomi/analytics/LogEvent$IdType;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/xiaomi/analytics/Tracker;->track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-void
.end method

.method public static trackJumpException(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V
    .locals 9

    if-nez p2, :cond_0

    const-string p0, "AdJumpTracker"

    const-string p1, "jumpControlInfo is null"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;

    const-string v2, "AdJumpTracker"

    const-string v3, "trackJumpException"

    move-object v1, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackJumpResult(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getSendLog()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, "AdJumpTracker"

    const-string p1, "no need to trackJumpResult"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/miui/msa/internal/adjump/AdJumpTracker$1;

    const-string v2, "AdJumpTracker"

    const-string v3, "trackJumpResult"

    move-object v1, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/msa/internal/adjump/AdJumpTracker$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackJumpTimeOut(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getSendLog()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, "AdJumpTracker"

    const-string p1, "no need to trackJumpTimeOut"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/miui/msa/internal/adjump/AdJumpTracker$3;

    const-string v2, "AdJumpTracker"

    const-string v3, "trackJumpTimeOut"

    move-object v1, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/msa/internal/adjump/AdJumpTracker$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
