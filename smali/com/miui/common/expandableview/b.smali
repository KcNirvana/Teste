.class public abstract Lcom/miui/common/expandableview/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apu(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
.end method

.method public abstract apv(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/d;

    :goto_0
    invoke-virtual {v0, p3}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v3

    invoke-virtual {v0, p3}, Lcom/miui/common/expandableview/d;->getPositionInSectionForPosition(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/common/expandableview/b;->apv(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/d;

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/common/expandableview/b;->apu(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    goto :goto_1
.end method
