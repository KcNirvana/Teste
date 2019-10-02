.class final Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;
.super Ljava/lang/Object;
.source "MixpanelStatsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "66fc2206e57d211556cdcabdb57baede"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->access$002(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->access$000()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->identify(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->access$000()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$1;->val$properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->trackMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
