.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$17;
.super Landroid/os/Handler;
.source "PresenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$17;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$17;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1002(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z

    return-void
.end method
