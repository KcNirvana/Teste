.class public abstract Lcom/miui/common/a/a/k;
.super Lcom/miui/common/a/a/f;
.source ""


# instance fields
.field protected mLoadingManager:Lcom/miui/common/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public hideLoadingView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mLoadingManager:Lcom/miui/common/a/a/d;

    invoke-virtual {v0, v1}, Lcom/miui/common/a/a/d;->aGu(Z)V

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/miui/common/a/a/d;

    iget-object v1, p0, Lcom/miui/common/a/a/k;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/common/a/a/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/common/a/a/k;->mLoadingManager:Lcom/miui/common/a/a/d;

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/a/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setAllowBackWhileLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mLoadingManager:Lcom/miui/common/a/a/d;

    invoke-virtual {v0, p1}, Lcom/miui/common/a/a/d;->aGv(Z)V

    return-void
.end method

.method public setLoadingText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mLoadingManager:Lcom/miui/common/a/a/d;

    invoke-virtual {v0, p1}, Lcom/miui/common/a/a/d;->setLoadingText(I)V

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mLoadingManager:Lcom/miui/common/a/a/d;

    invoke-virtual {v0, p1}, Lcom/miui/common/a/a/d;->setLoadingText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/k;->showLoadingView(Z)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/k;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/a/a/k;->mLoadingManager:Lcom/miui/common/a/a/d;

    invoke-virtual {v0}, Lcom/miui/common/a/a/d;->showLoadingView()V

    return-void
.end method
