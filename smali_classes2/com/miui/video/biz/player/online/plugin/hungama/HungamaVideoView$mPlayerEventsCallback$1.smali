.class public final Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;
.super Ljava/lang/Object;
.source "HungamaVideoView.kt"

# interfaces
.implements Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Y\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u000e\u0010\u000b\u001a\n\u0018\u00010\u000cj\u0004\u0018\u0001`\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u00032\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u001d0 j\u0008\u0012\u0004\u0012\u00020\u001d`!H\u0016J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a8\u0006#"
    }
    d2 = {
        "com/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1",
        "Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;",
        "changeOrientation",
        "",
        "i",
        "",
        "onCastConnected",
        "onDataConsumption",
        "l",
        "",
        "onError",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onFail",
        "webServiceError",
        "Lcom/hungama/movies/sdk/Utils/WebServiceError;",
        "onPlaybackProgress",
        "l1",
        "onPlayerBufferingStateChanged",
        "b",
        "",
        "onSeekingProgressChanged",
        "onSeekingStateChanged",
        "onStateChanged",
        "playbackState",
        "Lcom/hungama/movies/sdk/Utils/PlaybackState;",
        "onVariantChanged",
        "m3u8MetaData",
        "Lcom/hungama/movies/sdk/Utils/M3u8MetaData;",
        "onVariantList",
        "arrayList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "showToolBar",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCastConnected()V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCastConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDataConsumption(J)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConsumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->getSTATE_ERROR()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;I)V

    invoke-static {}, Lcom/miui/video/framework/utilities/NetworkUtil;->isConnected()Z

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnErrorListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnErrorListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x15f94

    invoke-interface {v0, v2, v1, v3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->releasePlayer()Z

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onFail(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V
    .locals 3
    .param p1    # Lcom/hungama/movies/sdk/Utils/WebServiceError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnErrorListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x12d

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/WebServiceError;->getErrorCode()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->getSTATE_ERROR()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;I)V

    return-void
.end method

.method public onPlaybackProgress(JJ)V
    .locals 0

    iget-object p3, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMPlayingStart$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p3, 0xa

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMPlayingStart$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$mPlayerEventsCallback$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnInfoListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 p3, 0x385

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method public onPlayerBufferingStateChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerBufferingStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekingProgressChanged(I)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekingProgressChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekingStateChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekingStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackState;)V
    .locals 3
    .param p1    # Lcom/hungama/movies/sdk/Utils/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "playbackState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVariantChanged(Lcom/hungama/movies/sdk/Utils/M3u8MetaData;)V
    .locals 3
    .param p1    # Lcom/hungama/movies/sdk/Utils/M3u8MetaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "m3u8MetaData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVariantChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVariantList(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/hungama/movies/sdk/Utils/M3u8MetaData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "arrayList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVariantList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showToolBar(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToolBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
