.class public abstract Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IInitBaseListener;
.implements Lcom/miui/video/framework/impl/IInitListener;
.implements Lcom/miui/video/framework/impl/IActivityListener;
.implements Lcom/miui/video/framework/impl/IDestoryListener;


# static fields
.field protected static final FRAGMENT_DETACH:I = 0x4

.field protected static final FRAGMENT_HIDE:I = 0x2

.field protected static final FRAGMENT_REMOVE:I = 0x3

.field protected static final FRAGMENT_REMOVEALL:I = 0x0

.field protected static final FRAGMENT_SHOW:I = 0x1


# instance fields
.field private isDestroy:Z

.field private mContentResID:I

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

.field protected mHandler:Landroid/os/Handler;

.field private mSavedBundle:Landroid/os/Bundle;

.field private vContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity$1;-><init>(Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected clearAllMessages()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->vContentView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->vContentView:Landroid/view/View;

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mSavedBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->isDestroy:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->isDestroy:Z

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mSavedBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {}, Lcom/miui/video/framework/utils/DataUtils;->getInstance()Lcom/miui/video/framework/utils/DataUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/video/framework/utils/DataUtils;->addUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->clearAllMessages()V

    invoke-static {}, Lcom/miui/video/framework/utils/DataUtils;->getInstance()Lcom/miui/video/framework/utils/DataUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/framework/utils/DataUtils;->removeUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->isDestroy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mContentResID:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->setContentView(I)V

    return-void
.end method

.method protected removeUIMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected runFragment(ILandroid/support/v4/app/Fragment;IZ)V
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

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  addToBackStack= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :pswitch_3
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    if-eq p3, p2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mFragmentMap:Ljava/util/Map;

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected runUIMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->runUIMessage(IJ)V

    return-void
.end method

.method protected runUIMessage(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected runUIMessage(ILjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->runUIMessage(ILjava/lang/Object;J)V

    return-void
.end method

.method protected runUIMessage(ILjava/lang/Object;J)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3, p4}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->runUIMessage(Landroid/os/Message;J)V

    return-void
.end method

.method protected runUIMessage(Landroid/os/Message;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->runUIMessage(Landroid/os/Message;J)V

    return-void
.end method

.method protected runUIMessage(Landroid/os/Message;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mContentResID:I

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils;->getInstance()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mContentResID:I

    invoke-virtual {p1, v0}, Lcom/miui/video/base/utils/ThemeUtils;->getLayout(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->vContentView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->vContentView:Landroid/view/View;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->mContentResID:I

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->vContentView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->initBase()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->initViewsValue()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->initViewsEvent()V

    return-void
.end method
