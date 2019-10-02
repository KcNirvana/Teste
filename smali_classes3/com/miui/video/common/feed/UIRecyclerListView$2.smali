.class Lcom/miui/video/common/feed/UIRecyclerListView$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "UIRecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/UIRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/UIRecyclerListView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$2;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView$2;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p2, p1, p3}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$100(Lcom/miui/video/common/feed/UIRecyclerListView;Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method
