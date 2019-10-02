.class Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer$4;
.super Ljava/lang/Object;
.source "OriginMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;->access$300(Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;->access$300(Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
