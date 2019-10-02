.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;
.super Ljava/lang/Object;
.source "FrameLocalController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->scroll(JJZF)V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$800(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$800(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$800(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    sub-int v0, p1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$900(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    int-to-long v1, p1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$1000(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)J

    move-result-wide v3

    mul-long v1, v1, v3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$900(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int p1, v1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$202(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;J)J

    goto :goto_0

    :cond_1
    const-string p1, "LocalController"

    const-string v0, " mRecyclerView NULL "

    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
