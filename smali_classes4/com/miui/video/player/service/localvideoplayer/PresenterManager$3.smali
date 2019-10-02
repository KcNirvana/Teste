.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    const-string v0, "LocalPlayerPresenter"

    const-string v1, "save -- onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$600(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$700(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$700(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/utils/AiMusicUtils;->updateMediaStore(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method
