.class public Lcom/miui/video/service/base/BaseTabFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "BaseTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Lcom/miui/video/service/base/VideoBaseFragment<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hideStatusBar:Z

.field private hideTabBar:Z

.field private vStatusBar:Landroid/view/View;

.field private vTabBlank:Landroid/view/View;

.field private wrapper:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/service/base/BaseTabFragment;->hideStatusBar:Z

    return-void
.end method


# virtual methods
.method protected hideStatusBarView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideTabView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/service/base/BaseTabFragment;->hideStatusBarView()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->hideStatusBar:Z

    invoke-virtual {p0}, Lcom/miui/video/service/base/BaseTabFragment;->hideTabView()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->hideTabBar:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/service/base/VideoBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/miui/video/service/R$layout;->fragment_base_tab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->wrapper:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->wrapper:Landroid/view/View;

    sget p3, Lcom/miui/video/service/R$id;->wrapper_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->wrapper:Landroid/view/View;

    sget p2, Lcom/miui/video/service/R$id;->status_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->vStatusBar:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->wrapper:Landroid/view/View;

    sget p2, Lcom/miui/video/service/R$id;->v_tab_blank:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->vTabBlank:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->vStatusBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/video/service/base/BaseTabFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/miui/video/service/base/BaseTabFragment;->vStatusBar:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->hideStatusBar:Z

    const/4 p2, 0x0

    const/16 p3, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->vStatusBar:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/service/base/BaseTabFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/service/base/BaseTabFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    :goto_0
    iget-boolean p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->hideTabBar:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->vTabBlank:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->vTabBlank:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/service/base/BaseTabFragment;->wrapper:Landroid/view/View;

    return-object p1
.end method

.method protected setLayoutResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
