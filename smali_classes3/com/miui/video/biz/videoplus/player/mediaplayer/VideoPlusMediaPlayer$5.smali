.class Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;
.super Ljava/lang/Object;
.source "VideoPlusMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->access$500(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;->access$500(Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V

    :cond_0
    return-void
.end method
