.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4$1;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;->onError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$900(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    return-void
.end method
