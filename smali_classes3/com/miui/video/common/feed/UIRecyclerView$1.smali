.class Lcom/miui/video/common/feed/UIRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "UIRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/UIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/UIRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/UIRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->access$000(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->access$000(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->access$100(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->isLastItemVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->access$100(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->onUIShow()V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->access$000(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->access$000(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->access$200(Lcom/miui/video/common/feed/UIRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->access$202(Lcom/miui/video/common/feed/UIRecyclerView;Z)Z

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    iget-object p2, p0, Lcom/miui/video/common/feed/UIRecyclerView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-static {p2}, Lcom/miui/video/common/feed/UIRecyclerView;->access$300(Lcom/miui/video/common/feed/UIRecyclerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->access$400(Lcom/miui/video/common/feed/UIRecyclerView;I)V

    :cond_1
    return-void
.end method
