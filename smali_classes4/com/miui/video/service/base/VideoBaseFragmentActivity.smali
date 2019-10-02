.class public abstract Lcom/miui/video/service/base/VideoBaseFragmentActivity;
.super Lcom/miui/video/common/library/base/BaseFragmentActivity;
.source "VideoBaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        ">",
        "Lcom/miui/video/common/library/base/BaseFragmentActivity<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;-><init>()V

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

    iget-object v2, p0, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_1
    return-void
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

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->backScheme(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/common/library/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->mContext:Landroid/content/Context;

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

.method public showLoading()V
    .locals 0

    return-void
.end method
