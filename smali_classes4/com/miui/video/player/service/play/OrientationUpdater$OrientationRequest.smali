.class Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;
.super Ljava/lang/Object;
.source "OrientationUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/play/OrientationUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationRequest"
.end annotation


# instance fields
.field private mTarget:I

.field private final mUpdateHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/video/player/service/play/OrientationUpdater;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/play/OrientationUpdater;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public change(I)V
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mTarget:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mTarget:I

    iget-object p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mUpdateHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$400(Lcom/miui/video/player/service/play/OrientationUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$200(Lcom/miui/video/player/service/play/OrientationUpdater;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iget v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mTarget:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$200(Lcom/miui/video/player/service/play/OrientationUpdater;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->mTarget:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
