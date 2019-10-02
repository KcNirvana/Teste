.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 2

    sget-object p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnErrorListener what:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$200(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    new-instance v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;II)V

    invoke-static {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$202(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$200(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const-string p2, "local"

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendFail(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
