.class public abstract Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.super Lcom/miui/video/common/library/base/BaseAppCompatActivity;
.source "VideoBaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Lcom/miui/video/common/library/base/BaseAppCompatActivity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private lastVisibleTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private backScheme(Landroid/content/Intent;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "back_scheme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private pageTracker()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->tackerPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->lastVisibleTime:J

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

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->tackerPageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->lastVisibleTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v4

    invoke-static {p0, v0, v1, v4}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    iput-wide v2, p0, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->lastVisibleTime:J

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
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

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

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseAppCompatActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->backScheme(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/common/library/base/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerEventCreator;->createPageViewEvent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseAppCompatActivity;->onPause()V

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->pageTracker()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseAppCompatActivity;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->lastVisibleTime:J

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
