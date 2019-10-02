.class final Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->loadAsync(Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $networkType:I

.field final synthetic $video:Lcom/miui/video/player/service/model/VideoObject;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/model/VideoObject;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;->$video:Lcom/miui/video/player/service/model/VideoObject;

    iput p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;->$networkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$string;->ovp_load_playinfo_failure:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;->$video:Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "rxjava parse error"

    :goto_0
    iget v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$3;->$networkType:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onVideoRequestEnd(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method
