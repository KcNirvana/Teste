.class Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$2;
.super Ljava/lang/Object;
.source "MiMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$100(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;->access$100(Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_0
    return-void
.end method
