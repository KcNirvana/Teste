.class Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$1;
.super Ljava/lang/Object;
.source "UIHorizontalCardListView.java"

# interfaces
.implements Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$1;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$1;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    iget-object v0, v0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLastItemOffsetPosition(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$1;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    iget-object v0, v0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLastItemPosition(I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
