.class final Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;
.super Ljava/lang/Object;
.source "VideoStatisticsManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->trackPlayInfo(Ljava/util/HashMap;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoStatisticsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoStatisticsManager.kt\ncom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1\n*L\n1#1,843:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $event:Ljava/lang/String;

.field final synthetic $needPlayId:Z

.field final synthetic $toJsonParams:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$toJsonParams:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$needPlayId:Z

    iput-object p3, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$toJsonParams:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$needPlayId:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$toJsonParams:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->getPlayId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v2, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->getCommonParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$trackPlayInfo$1;->$toJsonParams:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method
