.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    const-string v0, "LocalPlayerPresenter"

    const-string v1, "save -- onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method
