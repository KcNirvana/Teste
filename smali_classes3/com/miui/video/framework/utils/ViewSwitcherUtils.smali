.class public Lcom/miui/video/framework/utils/ViewSwitcherUtils;
.super Ljava/lang/Object;
.source "ViewSwitcherUtils.java"


# instance fields
.field private mCurrentViewIndex:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private vLastView:Landroid/view/View;

.field private vMainView:Landroid/view/View;

.field private vParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vParent:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->mCurrentViewIndex:I

    iget-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method


# virtual methods
.method public showCustomView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vParent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->mCurrentViewIndex:I

    iget-object v2, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-object p1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    return-void
.end method

.method public showMainView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vLastView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->vMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
