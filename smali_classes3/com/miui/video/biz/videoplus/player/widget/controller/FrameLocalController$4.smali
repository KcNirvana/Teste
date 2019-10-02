.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;
.super Ljava/lang/Object;
.source "FrameLocalController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->scroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$800(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$1100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v0

    sub-int v0, p1, v0

    const-string v1, "LocalController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame test controller scroll value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$800(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$300(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$302(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$1102(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I

    :cond_0
    return-void
.end method
