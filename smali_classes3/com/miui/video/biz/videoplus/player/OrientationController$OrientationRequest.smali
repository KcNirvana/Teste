.class Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;
.super Ljava/lang/Object;
.source "OrientationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/OrientationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationRequest"
.end annotation


# instance fields
.field private mTarget:I

.field private mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/OrientationController;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method change(I)V
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mTarget:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mTarget:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {p1, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method destroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mUpdateHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->access$300(Lcom/miui/video/biz/videoplus/player/OrientationController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mTarget:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->access$300(Lcom/miui/video/biz/videoplus/player/OrientationController;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->mTarget:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
