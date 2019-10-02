.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hideSaveDialog(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$000(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSaveEnable(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->dismiss(Landroid/content/Context;)Z

    const-string v0, "LocalPlayerPresenter"

    const-string v2, "media scan path -- mSaveDialog = null\u3000\uff11\uff11\uff11"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$200(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$300(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->val$success:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->ai_music_save_success:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$402(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$502(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z

    return-void
.end method
