.class Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/UIHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;


# direct methods
.method public constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/video/framework/base/ui/UIBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/video/framework/base/ui/UIBase;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/UIBase;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onUIHide()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onUIHide()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/video/framework/base/ui/UIBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/video/framework/base/ui/UIBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUIShow()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onUIShow()V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    const-string v0, "ACTION_SET_VALUE"

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
