.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$7;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pause(ZZ)V
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

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$7;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$7;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    return-void
.end method
