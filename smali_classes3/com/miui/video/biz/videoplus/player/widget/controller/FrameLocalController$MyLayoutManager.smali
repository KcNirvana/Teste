.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$1200(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$MyLayoutManager;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$1200(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, -0x1

    mul-int p1, p1, v0

    add-int/2addr v1, p1

    :goto_0
    return v1
.end method
