.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne v0, p2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1000(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1002(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->save_cancel_toast:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    const-wide/16 v0, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1200(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;ZJ)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$600(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6$1;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;)V

    invoke-static {p2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2, p3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1002(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return p3

    :cond_2
    return p1
.end method
