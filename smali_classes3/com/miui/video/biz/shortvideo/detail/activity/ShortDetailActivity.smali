.class public final Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;
.super Lcom/miui/video/service/base/VideoBaseFragmentActivity;
.source "ShortDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseFragmentActivity<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u0012\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0010\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;",
        "Lcom/miui/video/service/base/VideoBaseFragmentActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "mPath",
        "",
        "mSource",
        "mTarget",
        "vDetailFragment",
        "Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;",
        "initData",
        "",
        "intent",
        "Landroid/content/Intent;",
        "initFindViews",
        "onBackPressed",
        "onNewIntent",
        "setLayoutResId",
        "",
        "startRefreshFragment",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mPath:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private vDetailFragment:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;-><init>()V

    return-void
.end method

.method private final initData(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mTarget:Ljava/lang/String;

    const-string v0, "link"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mSource:Ljava/lang/String;

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final startRefreshFragment(Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->initData(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->vDetailFragment:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mTarget:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initFindViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->initData(Landroid/content/Intent;)V

    sget-object v0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->Companion:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mTarget:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->vDetailFragment:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_fl_contain:I

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->vDetailFragment:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;

    check-cast v1, Landroid/support/v4/app/Fragment;

    sget-object v2, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->runFragment(ILandroid/support/v4/app/Fragment;Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->vDetailFragment:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->onBackPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/activity/ShortDetailActivity;->startRefreshFragment(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->activity_short_video_detail:I

    return v0
.end method
