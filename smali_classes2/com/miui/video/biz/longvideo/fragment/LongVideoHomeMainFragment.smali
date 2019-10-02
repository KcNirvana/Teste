.class public final Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;
.super Lcom/miui/video/service/base/BaseTabFragment;
.source "LongVideoHomeMainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/BaseTabFragment<",
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00192\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;",
        "Lcom/miui/video/service/base/BaseTabFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "mInfoStreamPresenter",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "vSearchBar",
        "Lcom/miui/video/service/widget/ui/UISearchBar;",
        "wrapper",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "initSearchBar",
        "",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "setLayoutResId",
        "",
        "setSearchBarHintText",
        "searchKey",
        "",
        "tackerPageName",
        "Companion",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

.field private wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/BaseTabFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getVSearchBar$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    return-object p0
.end method

.method public static final synthetic access$setMContext$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setSearchBarHintText(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->setSearchBarHintText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setVSearchBar$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;Lcom/miui/video/service/widget/ui/UISearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    return-void
.end method

.method private final initSearchBar()V
    .locals 3

    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->v_ui_search_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/video/service/widget/ui/UISearchBar;

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->vSearchBar:Lcom/miui/video/service/widget/ui/UISearchBar;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setEditEnableFocus(Z)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    const-string v1, ""

    sget v2, Lcom/miui/video/biz/group/longvideo/R$color;->c_black_20:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setEditHintText(Ljava/lang/String;I)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$drawable;->ic_ui_search_bar_mi_logo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setLeftImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$drawable;->ic_ui_search_bar_voice_gray:I

    new-instance v2, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightIconImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$drawable;->ic_ui_search_bar_voice_gray:I

    new-instance v2, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$2;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightIconImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$drawable;->ic_ui_search_bar_subscriber:I

    new-instance v2, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightFirstImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$drawable;->ic_ui_search_bar_history:I

    new-instance v2, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$4;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setRightSecondImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$5;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$5;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setListener(Landroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.service.widget.ui.UISearchBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setSearchBarHintText(Ljava/lang/String;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$setSearchBarHintText$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$setSearchBarHintText$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->scheduleMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->initSearchBar()V

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    new-instance v2, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$onActivityCreated$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$onActivityCreated$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-direct {v2, v3}, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;-><init>(Lio/reactivex/functions/Consumer;)V

    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/video/service/base/BaseTabFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/longvideo/R$layout;->fragment_long_video_main:I

    return v0
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "maintab_video"

    return-object v0
.end method
