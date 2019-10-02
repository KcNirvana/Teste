.class Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "UIRecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$000(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->isLastItemVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$000(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$100(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$100(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;

    move-result-object v1

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;->onInvisibleItemCount(I)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->onUIShow()V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$200(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$202(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$300(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->access$400(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;I)V

    :cond_0
    return-void
.end method
