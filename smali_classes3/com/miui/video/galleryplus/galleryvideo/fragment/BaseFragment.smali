.class public abstract Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/framework/impl/IActivityListener;
.implements Lcom/miui/video/framework/impl/IDestoryListener;


# instance fields
.field private isDestroyView:Z

.field private isTheme:Z

.field private mColorEntity:Lcom/miui/video/base/common/entity/ColorEntity;

.field private mContentResID:I

.field protected mContext:Landroid/content/Context;

.field private mHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitle:Ljava/lang/String;

.field protected vContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->isTheme:Z

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;)V

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-void
.end method

.method private setContentView(I)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils;->getInstance()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContentResID:I

    invoke-virtual {p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getLayout(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->vContentView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->vContentView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->isTheme:Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContentResID:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->vContentView:Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->initViewsEvent()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->vContentView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected findViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->vContentView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->isTheme:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils;->getInstance()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/base/utils/ThemeUtils;->getId(I)I

    move-result p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getColorEntity()Lcom/miui/video/base/common/entity/ColorEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mColorEntity:Lcom/miui/video/base/common/entity/ColorEntity;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mTitle:Ljava/lang/String;

    return-object v0
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

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->isDestroyView:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/video/base/utils/DataUtils;->getInstance()Lcom/miui/video/base/utils/DataUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/video/base/utils/DataUtils;->addUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->setLayoutResId()I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContentResID:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->isDestroyView:Z

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContentResID:I

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->setContentView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/miui/video/base/utils/DataUtils;->getInstance()Lcom/miui/video/base/utils/DataUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/utils/DataUtils;->removeUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v1}, Lcom/miui/video/base/common/task/WeakHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->isDestroyView:Z

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mContentResID:I

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->setContentView(I)Landroid/view/View;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected removeUIMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/WeakHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->removeMessages(I)V

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected runUIMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->runUIMessage(IJ)V

    return-void
.end method

.method protected runUIMessage(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/WeakHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected runUIMessage(ILjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->runUIMessage(ILjava/lang/Object;J)V

    return-void
.end method

.method protected runUIMessage(ILjava/lang/Object;J)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3, p4}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->runUIMessage(Landroid/os/Message;J)V

    return-void
.end method

.method protected runUIMessage(Landroid/os/Message;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->runUIMessage(Landroid/os/Message;J)V

    return-void
.end method

.method protected runUIMessage(Landroid/os/Message;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/WeakHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setColorEntity(Lcom/miui/video/base/common/entity/ColorEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mColorEntity:Lcom/miui/video/base/common/entity/ColorEntity;

    return-void
.end method

.method protected abstract setLayoutResId()I
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->mTitle:Ljava/lang/String;

    return-void
.end method
