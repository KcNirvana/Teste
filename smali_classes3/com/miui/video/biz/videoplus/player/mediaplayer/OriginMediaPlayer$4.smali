.class Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;
.super Ljava/lang/Object;
.source "OriginMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->access$300(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;->access$300(Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
