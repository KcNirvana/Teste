.class final Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;
.super Ljava/lang/Object;
.source "PlayInfoTrackManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->trackPlayStartInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayInfoTrackManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayInfoTrackManager.kt\ncom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1\n*L\n1#1,224:1\n*E\n"
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
.field final synthetic $params:Ljava/util/HashMap;

.field final synthetic $toJsonParams:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;->$toJsonParams:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;->$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;->$toJsonParams:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;->$toJsonParams:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;->$params:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$trackPlayStartInfo$1;->$toJsonParams:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method
