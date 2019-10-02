.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAiMusic()V
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "LocalPlayerPresenter"

    const-string v1, "ai music getAiMusic --- start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1400(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lorg/videolan/libvlc/MIPlayerGetScene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/MIPlayerGetScene;->getScene()I

    move-result v0

    const-string v1, "LocalPlayerPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ai music getAiMusic --- end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1502(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1600(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;I)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
