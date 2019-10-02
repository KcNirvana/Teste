.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;
.super Ljava/lang/Object;
.source "ScreenShotActivity.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

.field final synthetic val$shotter:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->val$shotter:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->val$shotter:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_screen_shot_success:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->setUpShareFragment(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
