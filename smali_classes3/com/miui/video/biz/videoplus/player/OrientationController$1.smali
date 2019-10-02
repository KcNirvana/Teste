.class Lcom/miui/video/biz/videoplus/player/OrientationController$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/OrientationController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/OrientationController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$1;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$1;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->access$000(Lcom/miui/video/biz/videoplus/player/OrientationController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$1;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->access$100(Lcom/miui/video/biz/videoplus/player/OrientationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController$1;->this$0:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/OrientationController;->access$200(Lcom/miui/video/biz/videoplus/player/OrientationController;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
