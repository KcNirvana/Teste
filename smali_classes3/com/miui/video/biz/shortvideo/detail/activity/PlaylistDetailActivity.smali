.class public final Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "PlaylistDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailActivity.kt\ncom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n671#2:76\n744#2,2:77\n*E\n*S KotlinDebug\n*F\n+ 1 PlaylistDetailActivity.kt\ncom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity\n*L\n44#1:76\n44#1,2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0014R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;",
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "container",
        "Landroid/widget/FrameLayout;",
        "fragment",
        "Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;",
        "mSource",
        "",
        "playlistId",
        "initViewsValue",
        "",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "setLayoutResId",
        "",
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

.field private container:Landroid/widget/FrameLayout;

.field private fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

.field private mSource:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->playlistId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initViewsValue()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->container:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_fl_contain:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->container:Landroid/widget/FrameLayout;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->mSource:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uri.decode(url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, "&"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v5, "item_id"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v1, Ljava/util/List;

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "="

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->playlistId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    if-nez v0, :cond_a

    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "intent_bundle"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-string v1, "intent_source"

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string v1, "intent_item_id"

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_fl_contain:I

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    check-cast v1, Landroid/support/v4/app/Fragment;

    sget-object v3, Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->runFragment(ILandroid/support/v4/app/Fragment;Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;Z)V

    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iput-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-direct {v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "intent_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "supportFragmentManager.beginTransaction()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_fl_contain:I

    move-object v2, v1

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/activity/PlaylistDetailActivity;->fragment:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->activity_play_list_detail:I

    return v0
.end method
