.class public Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIRecyclerUpdateBar.java"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_recycler_updatebar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar$1;-><init>(Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;->vView:Landroid/view/View;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
