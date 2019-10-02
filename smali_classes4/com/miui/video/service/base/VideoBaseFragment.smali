.class public abstract Lcom/miui/video/service/base/VideoBaseFragment;
.super Lcom/miui/video/common/library/base/BaseFragment;
.source "VideoBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Lcom/miui/video/common/library/base/BaseFragment<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_REFRESH:Ljava/lang/String; = "com.miui.videoplayer.force.refresh"


# instance fields
.field private lastVisibleTime:J

.field private mReceiver:Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseFragment;-><init>()V

    return-void
.end method

.method private pageTracker()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->tackerPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/service/base/VideoBaseFragment;->lastVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v4, "main_page"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v4, "page_use_time"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "item_id"

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->tackerPageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/miui/video/service/base/VideoBaseFragment;->lastVisibleTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v5

    invoke-static {v4, v0, v1, v5}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    iput-wide v2, p0, Lcom/miui/video/service/base/VideoBaseFragment;->lastVisibleTime:J

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/common/library/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;-><init>(Lcom/miui/video/service/base/VideoBaseFragment;)V

    iput-object p1, p0, Lcom/miui/video/service/base/VideoBaseFragment;->mReceiver:Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.videoplayer.force.refresh"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/base/VideoBaseFragment;->mReceiver:Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/base/VideoBaseFragment;->mReceiver:Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/base/VideoBaseFragment;->mReceiver:Lcom/miui/video/service/base/VideoBaseFragment$VideoBaseBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/common/library/base/BaseFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->pageTracker()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/service/base/VideoBaseFragment;->lastVisibleTime:J

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->pageTracker()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseFragment;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/service/base/VideoBaseFragment;->lastVisibleTime:J

    return-void
.end method

.method public onSelfPopped()V
    .locals 0

    return-void
.end method

.method public refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 0

    return-void
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
