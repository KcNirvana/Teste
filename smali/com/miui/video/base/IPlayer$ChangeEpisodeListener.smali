.class public interface abstract Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;
.super Ljava/lang/Object;
.source "IPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangeEpisodeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;",
        "",
        "onEpisodeChanged",
        "",
        "episode",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "video_service_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract onEpisodeChanged(Lcom/miui/video/base/model/MediaData$Episode;)V
    .param p1    # Lcom/miui/video/base/model/MediaData$Episode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
