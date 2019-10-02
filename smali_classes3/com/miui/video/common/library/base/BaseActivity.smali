.class public abstract Lcom/miui/video/common/library/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitBaseListener;
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/common/library/base/impl/IView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Landroid/app/Activity;",
        "Lcom/miui/video/framework/impl/IInitBaseListener;",
        "Lcom/miui/video/framework/impl/IInitListener;",
        "Lcom/miui/video/common/library/base/impl/IView;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSavedBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getSavedBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseActivity;->mSavedBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseActivity;->setLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/base/BaseActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/miui/video/common/library/base/BaseActivity;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseActivity;->mSavedBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseActivity;->createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-interface {p1, p0}, Lcom/miui/video/common/library/base/impl/IPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseActivity;->initBase()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseActivity;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseActivity;->initViewsEvent()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseActivity;->initViewsValue()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-interface {v0}, Lcom/miui/video/common/library/base/impl/IPresenter;->detach()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected abstract setLayoutResId()I
.end method
