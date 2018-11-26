.class final Lcom/miui/c/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bcH:Lcom/miui/c/d;

.field final synthetic bcI:Ljava/lang/String;

.field final synthetic bcJ:Ljava/lang/String;

.field final synthetic bcK:Lcom/miui/systemAdSolution/common/AdTrackType;

.field final synthetic bcL:J


# direct methods
.method constructor <init>(Lcom/miui/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;J)V
    .locals 1

    iput-object p1, p0, Lcom/miui/c/h;->bcH:Lcom/miui/c/d;

    iput-object p2, p0, Lcom/miui/c/h;->bcI:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/c/h;->bcJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/c/h;->bcK:Lcom/miui/systemAdSolution/common/AdTrackType;

    iput-wide p5, p0, Lcom/miui/c/h;->bcL:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v1, p0, Lcom/miui/c/h;->bcH:Lcom/miui/c/d;

    invoke-static {v1}, Lcom/miui/c/d;->bzl(Lcom/miui/c/d;)Lcom/miui/d/d;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/c/h;->bcH:Lcom/miui/c/d;

    invoke-static {v1}, Lcom/miui/c/d;->bzm(Lcom/miui/c/d;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/c/h;->bcH:Lcom/miui/c/d;

    invoke-static {v1}, Lcom/miui/c/d;->bzk(Lcom/miui/c/d;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/c/h;->bcI:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/systemAdSolution/common/AdInfo;

    move-object v5, v0

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/miui/c/f;->bzq(Lcom/miui/systemAdSolution/common/AdInfo;)Lcom/miui/systemAdSolution/common/Material;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v1, p0, Lcom/miui/c/h;->bcH:Lcom/miui/c/d;

    invoke-static {v1}, Lcom/miui/c/d;->bzl(Lcom/miui/c/d;)Lcom/miui/d/d;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "com.miui.securitycenter_globaladevent"

    :goto_0
    iget-object v3, p0, Lcom/miui/c/h;->bcK:Lcom/miui/systemAdSolution/common/AdTrackType;

    invoke-virtual {v5}, Lcom/miui/systemAdSolution/common/AdInfo;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v5

    iget-wide v8, p0, Lcom/miui/c/h;->bcL:J

    invoke-virtual/range {v1 .. v9}, Lcom/miui/d/d;->bBg(Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Ljava/lang/String;JLcom/miui/systemAdSolution/common/Material;J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/c/h;->bcJ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LoadResource"

    const-string/jumbo v3, "doTrack failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
