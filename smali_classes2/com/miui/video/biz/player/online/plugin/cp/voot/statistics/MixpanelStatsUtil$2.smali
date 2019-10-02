.class final Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$2;
.super Ljava/lang/Object;
.source "MixpanelStatsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->getDistinctId(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MixpanelStatsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VootVideoView getDistinctId currentThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "66fc2206e57d211556cdcabdb57baede"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->access$002(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->access$000()Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/statistics/MixpanelStatsUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->identify(Ljava/lang/String;)V

    return-void
.end method
