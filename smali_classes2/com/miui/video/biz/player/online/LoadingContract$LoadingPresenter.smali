.class public interface abstract Lcom/miui/video/biz/player/online/LoadingContract$LoadingPresenter;
.super Ljava/lang/Object;
.source "VideoPlayContract.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/BaseVideoPresenter;
.implements Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
.implements Lcom/miui/video/base/IPlayer$IVideoStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/LoadingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadingPresenter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/video/biz/player/online/BaseVideoPresenter;",
        "Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\u00020\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/LoadingContract$LoadingPresenter;",
        "V",
        "Lcom/miui/video/biz/player/online/BaseVideoPresenter;",
        "Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "setView",
        "",
        "view",
        "(Ljava/lang/Object;)V",
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
.method public abstract setView(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
