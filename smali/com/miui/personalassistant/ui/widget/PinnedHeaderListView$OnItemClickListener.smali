.class public abstract Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$OnItemClickListener;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnItemClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    check-cast v8, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;

    :goto_0
    invoke-virtual {v7, p3}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v3

    invoke-virtual {v7, p3}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$OnItemClickListener;->onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    goto :goto_1
.end method

.method public abstract onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method
