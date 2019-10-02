.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "InlineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)I

    move-result p2

    if-eq p2, p1, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->stop()V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$102(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;I)I

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$300(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isExpectPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->resume()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)I

    move-result p3

    if-gt p3, p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)I

    move-result p2

    if-ge p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->stop()V

    :cond_1
    return-void
.end method
