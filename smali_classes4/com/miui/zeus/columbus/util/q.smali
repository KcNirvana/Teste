.class public Lcom/miui/zeus/columbus/util/q;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "TrackUtils"

.field private static b:Lcom/xiaomi/analytics/Analytics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    sput-object v0, Lcom/miui/zeus/columbus/util/q;->b:Lcom/xiaomi/analytics/Analytics;

    sget-object v0, Lcom/miui/zeus/columbus/util/q;->b:Lcom/xiaomi/analytics/Analytics;

    sget-boolean v1, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->setDebugOn(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 2

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/zeus/columbus/util/q;->b:Lcom/xiaomi/analytics/Analytics;

    invoke-virtual {v0, p0}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p0

    const-string v0, "com.miui.systemAdSolution"

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/analytics/Tracker;->track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-void
.end method
