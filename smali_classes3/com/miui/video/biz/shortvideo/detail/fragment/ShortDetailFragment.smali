.class public final Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "ShortDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseFragment<",
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u0000 \u001f2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J$\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0014J\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0008\u0010\u001e\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;",
        "Lcom/miui/video/service/base/VideoBaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "mItemId",
        "",
        "mPath",
        "mSource",
        "vUIDetailView",
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;",
        "vUIPlayerContainer",
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;",
        "initBase",
        "",
        "initFindViews",
        "initViewsValue",
        "onBackPressed",
        "",
        "onDestroy",
        "onPause",
        "onResume",
        "refresh",
        "target",
        "source",
        "path",
        "setLayoutResId",
        "",
        "subTarget",
        "",
        "tackerPageName",
        "Companion",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mItemId:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

.field private vUIPlayerContainer:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->Companion:Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getVUIPlayerContainer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;)Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIPlayerContainer:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    if-nez p0, :cond_0

    const-string v0, "vUIPlayerContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setVUIPlayerContainer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIPlayerContainer:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    return-void
.end method

.method private final subTarget(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string p1, "-"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public initBase()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "intent_target"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->subTarget(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mItemId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "intent_source"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "path"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mPath:Ljava/lang/String;

    return-void
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_ui_player_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIPlayerContainer:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_ui_detail_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.shortvideo.detail.ui.ShortVideoDetailView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.biz.shortvideo.detail.ui.ShortVideoPlayerContainer"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsValue()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    if-nez v0, :cond_0

    const-string v1, "vUIDetailView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$initViewsValue$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment$initViewsValue$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;)V

    check-cast v1, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->setPlayListener(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    if-nez v0, :cond_1

    const-string v1, "vUIDetailView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mItemId:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    if-nez v0, :cond_0

    const-string v1, "vUIDetailView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIPlayerContainer:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    if-nez v0, :cond_1

    const-string v1, "vUIPlayerContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->onActivityDestroy()V

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    if-nez v0, :cond_0

    const-string v1, "vUIDetailView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onPause()V

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    if-nez v0, :cond_0

    const-string v1, "vUIDetailView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onResume()V

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    return-void
.end method

.method public final refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->subTarget(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mSource:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->vUIDetailView:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    if-nez p1, :cond_1

    const-string p2, "vUIDetailView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mItemId:Ljava/lang/String;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mSource:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/ShortDetailFragment;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->fragment_detail:I

    return v0
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "detail_page"

    return-object v0
.end method
