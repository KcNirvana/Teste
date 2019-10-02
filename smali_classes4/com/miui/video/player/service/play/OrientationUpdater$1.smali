.class Lcom/miui/video/player/service/play/OrientationUpdater$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/play/OrientationUpdater;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/play/OrientationUpdater;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/play/OrientationUpdater;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater$1;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$1;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$000(Lcom/miui/video/player/service/play/OrientationUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$1;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$100(Lcom/miui/video/player/service/play/OrientationUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$1;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$200(Lcom/miui/video/player/service/play/OrientationUpdater;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->isSystemRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater$1;->this$0:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/play/OrientationUpdater;->access$300(Lcom/miui/video/player/service/play/OrientationUpdater;I)V

    :cond_0
    return-void
.end method
