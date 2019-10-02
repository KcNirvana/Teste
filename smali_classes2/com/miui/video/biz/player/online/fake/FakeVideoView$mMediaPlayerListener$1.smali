.class public final Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;
.super Ljava/lang/Object;
.source "FakeVideoView.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/fake/FakeVideoView;-><init>(Landroid/content/Context;)V
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
        "\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "com/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1",
        "Lcom/miui/video/biz/player/online/fake/OnMediaPlayerListener;",
        "onBufferingUpdateListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;",
        "getOnBufferingUpdateListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;",
        "onCompletionListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "getOnCompletionListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "onErrorListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "getOnErrorListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "onInfoListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "getOnInfoListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "onPreparedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "getOnPreparedListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "onSeekCompleteListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "getOnSeekCompleteListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "onVideoSizeChangedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
        "getOnVideoSizeChangedListener",
        "()Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnBufferingUpdateListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerBufferingUpdateListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnCompletionListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerCompletionListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerErrorListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnInfoListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerInfoListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnPreparedListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerPreparedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnSeekCompleteListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerSeekCompleteListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnVideoSizeChangedListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$mMediaPlayerListener$1;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMInnerSizeChangedListener$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    return-object v0
.end method
