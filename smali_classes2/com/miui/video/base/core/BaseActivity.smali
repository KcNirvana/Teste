.class public abstract Lcom/miui/video/base/core/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitBaseListener;
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/framework/impl/IActivityListener;
.implements Lcom/miui/video/framework/impl/IDestoryListener;


# instance fields
.field private isDestroy:Z

.field private mContentResID:I

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSavedBundle:Landroid/os/Bundle;

.field private vContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/video/base/core/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/video/base/core/BaseActivity$1;-><init>(Lcom/miui/video/base/core/BaseActivity;)V

    iput-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->vContentView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->vContentView:Landroid/view/View;

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils;->getInstance()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/base/utils/ThemeUtils;->getId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSavedBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mSavedBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/core/BaseActivity;->isDestroy:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/video/base/core/BaseActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/core/BaseActivity;->isDestroy:Z

    iput-object p1, p0, Lcom/miui/video/base/core/BaseActivity;->mSavedBundle:Landroid/os/Bundle;

    invoke-static {}, Lcom/miui/video/framework/utils/DataUtils;->getInstance()Lcom/miui/video/framework/utils/DataUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/video/framework/utils/DataUtils;->addUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/base/core/BaseActivity;->isDestroy:Z

    invoke-static {}, Lcom/miui/video/framework/utils/DataUtils;->getInstance()Lcom/miui/video/framework/utils/DataUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/framework/utils/DataUtils;->removeUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget v0, p0, Lcom/miui/video/base/core/BaseActivity;->mContentResID:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/core/BaseActivity;->setContentView(I)V

    return-void
.end method

.method protected removeUIMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected runUIMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/base/core/BaseActivity;->runUIMessage(IJ)V

    return-void
.end method

.method protected runUIMessage(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected runUIMessage(ILjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/base/core/BaseActivity;->runUIMessage(ILjava/lang/Object;J)V

    return-void
.end method

.method protected runUIMessage(ILjava/lang/Object;J)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3, p4}, Lcom/miui/video/base/core/BaseActivity;->runUIMessage(Landroid/os/Message;J)V

    return-void
.end method

.method protected runUIMessage(Landroid/os/Message;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/base/core/BaseActivity;->runUIMessage(Landroid/os/Message;J)V

    return-void
.end method

.method protected runUIMessage(Landroid/os/Message;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/base/core/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/base/core/BaseActivity;->mContentResID:I

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils;->getInstance()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/base/core/BaseActivity;->mContentResID:I

    invoke-virtual {p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getLayout(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/core/BaseActivity;->vContentView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/base/core/BaseActivity;->vContentView:Landroid/view/View;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/video/base/core/BaseActivity;->mContentResID:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/core/BaseActivity;->vContentView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/base/core/BaseActivity;->initBase()V

    invoke-virtual {p0}, Lcom/miui/video/base/core/BaseActivity;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/base/core/BaseActivity;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/base/core/BaseActivity;->initViewsEvent()V

    return-void
.end method
