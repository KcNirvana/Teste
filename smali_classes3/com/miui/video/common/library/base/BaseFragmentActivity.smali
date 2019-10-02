.class public abstract Lcom/miui/video/common/library/base/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitBaseListener;
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/common/library/base/impl/IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/miui/video/framework/impl/IInitBaseListener;",
        "Lcom/miui/video/framework/impl/IInitListener;",
        "Lcom/miui/video/common/library/base/impl/IView;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

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

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

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

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mSavedBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->setLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mSavedBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-interface {p1, p0}, Lcom/miui/video/common/library/base/impl/IPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->initBase()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->initViewsEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    invoke-interface {v0}, Lcom/miui/video/common/library/base/impl/IPresenter;->detach()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected runFragment(ILandroid/support/v4/app/Fragment;Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;Z)V
    .locals 3

    const-string v0, "runFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerResId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  fragment= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  addToBackStack= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/miui/video/common/library/base/BaseFragmentActivity$1;->$SwitchMap$com$miui$video$common$library$base$BaseFragmentActivity$FragmentType:[I

    invoke-virtual {p3}, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->ordinal()I

    move-result p3

    aget p3, v1, p3

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :pswitch_3
    iget-object p3, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    if-eq p3, p2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_0
    if-eqz p4, :cond_2

    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    iget-object p3, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/miui/video/common/library/base/BaseFragmentActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract setLayoutResId()I
.end method
