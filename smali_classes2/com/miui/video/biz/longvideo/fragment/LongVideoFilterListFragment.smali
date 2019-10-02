.class public final Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "LongVideoFilterListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongVideoFilterListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongVideoFilterListFragment.kt\ncom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment\n*L\n1#1,111:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0011H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;",
        "Lcom/miui/video/service/base/VideoBaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "channel",
        "",
        "channelName",
        "dataSource",
        "Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;",
        "headVideoView",
        "Lcom/miui/video/biz/longvideo/view/HeadVideoView;",
        "mInfoStreamPresenter",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "wrapper",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "setLayoutResId",
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
.field public static final Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private channel:Ljava/lang/String;

.field private channelName:Ljava/lang/String;

.field private dataSource:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

.field private headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

.field private mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDataSource$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;)Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->dataSource:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    return-object p0
.end method

.method public static final synthetic access$setDataSource$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->dataSource:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "item_id"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments!!.getString(CC\u2026es.PARAMS_ITEM_ID, \"all\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->channel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "title"

    const-string v2, "All"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments!!.getString(CCodes.PARAMS_TITLE, \"All\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->channelName:Ljava/lang/String;

    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->v_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->channelName:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v2, "channelName"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->channel:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v2, "channel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-direct {v0, v1}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->dataSource:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->dataSource:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    check-cast v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    :cond_5
    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/longvideo/view/HeadVideoView;->onDestroyView()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/longvideo/R$layout;->fragment_long_video_filter:I

    return v0
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->channel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "channel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_select"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
