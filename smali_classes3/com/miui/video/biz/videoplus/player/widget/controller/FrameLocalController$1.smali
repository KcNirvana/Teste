.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_0

    const-string p1, "LocalController"

    const-string p2, " SCROLL_STATE_IDLE "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$000(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$002(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$200(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;->onScrollEnd(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const-string p2, "LocalController"

    const-string v0, " SCROLL_STATE_DRAGGING "

    invoke-static {p2, v0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$002(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$100(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;->onScrollStart()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string p1, "LocalController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onScrolled mOffSet   :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$300(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   dx:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$400(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$402(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$400(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$302(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;I)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$000(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$500(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;Z)V

    :cond_0
    return-void
.end method
