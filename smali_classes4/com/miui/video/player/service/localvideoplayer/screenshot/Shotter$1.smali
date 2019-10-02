.class Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;
.super Ljava/lang/Object;
.source "Shotter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->startScreenShot(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

.field final synthetic val$onShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->val$onShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-static {v4}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;->val$onShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/media/Image;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
