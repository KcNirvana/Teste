.class Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;
.super Ljava/lang/Object;
.source "FullScreenVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/player/service/R$id;->vp_screen_locker:I

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$200(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$300(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$400(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$600(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$502(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Z)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/player/service/R$id;->vp_screen_shot:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$700(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->access$800(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    return-void
.end method
