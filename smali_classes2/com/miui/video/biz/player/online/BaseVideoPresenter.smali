.class public interface abstract Lcom/miui/video/biz/player/online/BaseVideoPresenter;
.super Ljava/lang/Object;
.source "VideoPlayContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\u0008\u0010\u0007\u001a\u00020\u0005H&J\u0008\u0010\u0008\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/BaseVideoPresenter;",
        "",
        "getVideoContext",
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "onComponentDestroy",
        "",
        "onComponentStart",
        "onComponentStop",
        "onViewDismissed",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onComponentDestroy()V
.end method

.method public abstract onComponentStart()V
.end method

.method public abstract onComponentStop()V
.end method

.method public abstract onViewDismissed()V
.end method
