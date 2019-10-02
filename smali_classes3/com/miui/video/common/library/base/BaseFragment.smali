.class public abstract Lcom/miui/video/common/library/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitBaseListener;
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/common/library/base/impl/IFragmentListener;
.implements Lcom/miui/video/common/library/base/impl/IView;
.implements Lcom/miui/video/framework/impl/IUIListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/miui/video/framework/impl/IInitBaseListener;",
        "Lcom/miui/video/framework/impl/IInitListener;",
        "Lcom/miui/video/common/library/base/impl/IFragmentListener;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "Lcom/miui/video/framework/impl/IUIListener;"
    }
.end annotation


# instance fields
.field private isDestroyView:Z

.field private mContentResID:I

.field protected mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleIconId:I

.field private vContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mTitleIconId:I

    return-void
.end method

.method private setContentView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->vContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-interface {p1, p0}, Lcom/miui/video/common/library/base/impl/IPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->vContentView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected banNotch()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->banNotchNotch(Landroid/view/Window;)V

    return-void
.end method

.method protected abstract createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->vContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getIconResId()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mTitleIconId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hideLoading()V
    .locals 0

    return-void
.end method

.method public initBase()V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->isDestroyView:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->setLayoutResId()I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mContentResID:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->isDestroyView:Z

    iget p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mContentResID:I

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/base/BaseFragment;->setContentView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-interface {v0}, Lcom/miui/video/common/library/base/impl/IPresenter;->detach()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->mContext:Landroid/content/Context;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/base/BaseFragment;->isDestroyView:Z

    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSelfPopped()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->initBase()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->initViewsEvent()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragment;->initViewsValue()V

    return-void
.end method

.method protected abstract setLayoutResId()I
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleIconId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/base/BaseFragment;->mTitleIconId:I

    return-void
.end method

.method public showLoading()V
    .locals 0

    return-void
.end method
