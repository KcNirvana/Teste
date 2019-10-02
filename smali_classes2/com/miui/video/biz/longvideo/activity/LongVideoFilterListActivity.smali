.class public final Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "LongVideoFilterListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity<",
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0010\u001a\u00020\u000cH\u0014J\u0012\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;",
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "bundle",
        "Landroid/os/Bundle;",
        "mInstance",
        "Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;",
        "source",
        "",
        "init",
        "",
        "initArgs",
        "onCreate",
        "savedInstanceState",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "setLayoutResId",
        "",
        "biz_group_longvideo_release"
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

.field private bundle:Landroid/os/Bundle;

.field private mInstance:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->source:Ljava/lang/String;

    return-void
.end method

.method private final init()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->initArgs()V

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->mInstance:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v2, "bundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;->newInstance(Landroid/os/Bundle;)Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->mInstance:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->mInstance:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    const-string v2, "bundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->container:I

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->mInstance:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method private final initArgs()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent.getBundleExtra(CCodes.INTENT_BUNDLE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v1, "bundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    const-string v1, "bundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const-string v1, "source"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle.getString(CCodes.PARAMS_SOURCE, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->mInstance:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/activity/LongVideoFilterListActivity;->init()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/longvideo/R$layout;->activity_long_video:I

    return v0
.end method
