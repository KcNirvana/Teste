.class Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;
.super Ljava/lang/Object;
.source "MiMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    const v1, 0x186a4

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$300(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$300(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    move-result-object v1

    if-ne p3, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;->onAddTimedText(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$302(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;

    :cond_1
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$400(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$400(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-interface {v1, v2, p2, p3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method
