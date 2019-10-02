.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveAiMusic(Z)V
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1900(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$2000(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAIMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
