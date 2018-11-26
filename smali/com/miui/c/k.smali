.class final Lcom/miui/c/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bcP:Ljava/lang/String;

.field final synthetic bcQ:Lcom/miui/systemAdSolution/common/AdTrackType;

.field final synthetic bcR:Lcom/miui/systemAdSolution/common/AdInfo;

.field final synthetic bcS:Lcom/miui/systemAdSolution/common/Material;

.field final synthetic bcT:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Lcom/miui/systemAdSolution/common/AdInfo;Lcom/miui/systemAdSolution/common/Material;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/k;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/c/k;->bcP:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/c/k;->bcQ:Lcom/miui/systemAdSolution/common/AdTrackType;

    iput-object p4, p0, Lcom/miui/c/k;->bcR:Lcom/miui/systemAdSolution/common/AdInfo;

    iput-object p5, p0, Lcom/miui/c/k;->bcS:Lcom/miui/systemAdSolution/common/Material;

    iput-wide p6, p0, Lcom/miui/c/k;->bcT:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/miui/c/k;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/d;->bBa(Landroid/content/Context;)Lcom/miui/d/d;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.miui.securitycenter_globaladevent"

    :goto_0
    iget-object v2, p0, Lcom/miui/c/k;->bcQ:Lcom/miui/systemAdSolution/common/AdTrackType;

    iget-object v3, p0, Lcom/miui/c/k;->bcR:Lcom/miui/systemAdSolution/common/AdInfo;

    invoke-virtual {v3}, Lcom/miui/systemAdSolution/common/AdInfo;->getTagId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/c/k;->bcR:Lcom/miui/systemAdSolution/common/AdInfo;

    invoke-virtual {v4}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/c/k;->bcS:Lcom/miui/systemAdSolution/common/Material;

    iget-wide v7, p0, Lcom/miui/c/k;->bcT:J

    invoke-virtual/range {v0 .. v8}, Lcom/miui/d/d;->bBg(Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Ljava/lang/String;JLcom/miui/systemAdSolution/common/Material;J)Z

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/c/k;->bcP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "doTrack failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
