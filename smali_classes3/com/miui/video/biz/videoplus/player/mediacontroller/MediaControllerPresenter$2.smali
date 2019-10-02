.class Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;
.super Ljava/lang/Object;
.source "MediaControllerPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->clickDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->val$finalEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$000(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->val$finalEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->removeMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
