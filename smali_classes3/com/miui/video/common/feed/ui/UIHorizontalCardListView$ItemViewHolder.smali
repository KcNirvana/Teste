.class Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIHorizontalCardListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;


# direct methods
.method public constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/video/framework/base/ui/UIBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/video/framework/base/ui/UIBase;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/UIBase;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowValue(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/video/framework/base/ui/UIBase;

    const-string v1, "ACTION_SET_VALUE"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
