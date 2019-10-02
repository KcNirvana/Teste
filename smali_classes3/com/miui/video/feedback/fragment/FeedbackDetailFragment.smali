.class public final Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "FeedbackDetailFragment.kt"

# interfaces
.implements Lcom/miui/video/feedback/presenter/view/FeedbackView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseFragment<",
        "Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;",
        ">;",
        "Lcom/miui/video/feedback/presenter/view/FeedbackView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedbackDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedbackDetailFragment.kt\ncom/miui/video/feedback/fragment/FeedbackDetailFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n671#2:154\n744#2,2:155\n*E\n*S KotlinDebug\n*F\n+ 1 FeedbackDetailFragment.kt\ncom/miui/video/feedback/fragment/FeedbackDetailFragment\n*L\n118#1:154\n118#1,2:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0016\u001a\u00020\u0002H\u0014J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u001c\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010 \u001a\u00020!H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;",
        "Lcom/miui/video/service/base/VideoBaseFragment;",
        "Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;",
        "Lcom/miui/video/feedback/presenter/view/FeedbackView;",
        "()V",
        "itemType",
        "",
        "mInfoStreamPresenter",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "mUiFactory",
        "Lcom/miui/video/feedback/card/FeedbackUIFactory;",
        "target",
        "vInput",
        "Landroid/widget/EditText;",
        "vRecycler",
        "Lcom/miui/video/common/feed/UIRecyclerListView;",
        "vSend",
        "Landroid/widget/ImageView;",
        "vTitleBar",
        "Lcom/miui/video/common/library/widget/UICommonTitleBar;",
        "wrapper",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "createPresenter",
        "initFindViews",
        "",
        "onInit",
        "entity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "msg",
        "onSubmitResult",
        "success",
        "",
        "setLayoutResId",
        "",
        "Companion",
        "biz_feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private itemType:Ljava/lang/String;

.field private mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private mUiFactory:Lcom/miui/video/feedback/card/FeedbackUIFactory;

.field private target:Ljava/lang/String;

.field private vInput:Landroid/widget/EditText;

.field private vRecycler:Lcom/miui/video/common/feed/UIRecyclerListView;

.field private vSend:Landroid/widget/ImageView;

.field private vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

.field private wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->Companion:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getItemType$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->itemType:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "itemType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMPresenter$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    return-object p0
.end method

.method public static final synthetic access$getVInput$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vInput:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "vInput"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setItemType$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->itemType:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMPresenter$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-void
.end method

.method public static final synthetic access$setVInput$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vInput:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->createPresenter()Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object v0
.end method

.method protected createPresenter()Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-direct {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;-><init>()V

    return-object v0
.end method

.method public initFindViews()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intent_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "intent_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_id"

    invoke-static {v2, v3}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragmentKt;->getUrlParambyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "intent_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "issue"

    :goto_2
    iput-object v3, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->itemType:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragmentKt;->getUrlParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->target:Ljava/lang/String;

    sget v0, Lcom/miui/video/feedback/R$id;->v_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-nez v0, :cond_3

    const-string v3, "vTitleBar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-nez v0, :cond_4

    const-string v1, "vTitleBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$1;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$1;-><init>(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setOnClickBack(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/feedback/R$id;->v_send:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vSend:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vSend:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    const-string v1, "vSend"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;

    invoke-direct {v1, p0, v2}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;-><init>(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/feedback/R$id;->v_input_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vInput:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/feedback/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vRecycler:Lcom/miui/video/common/feed/UIRecyclerListView;

    new-instance v0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vRecycler:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-nez v1, :cond_6

    const-string v2, "vRecycler"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-direct {v0, v1}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    check-cast v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    new-instance v2, Lcom/miui/video/feedback/datasource/FeedbackDetailDataSource;

    iget-object v3, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->target:Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v4, "target"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-direct {v2, v3}, Lcom/miui/video/feedback/datasource/FeedbackDetailDataSource;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/feedback/FeedbackLoadStrategy;

    invoke-direct {v3}, Lcom/miui/video/feedback/FeedbackLoadStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    new-instance v0, Lcom/miui/video/feedback/card/FeedbackUIFactory;

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->itemType:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v2, "itemType"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-direct {v0, v1}, Lcom/miui/video/feedback/card/FeedbackUIFactory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mUiFactory:Lcom/miui/video/feedback/card/FeedbackUIFactory;

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_9

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mUiFactory:Lcom/miui/video/feedback/card/FeedbackUIFactory;

    if-nez v1, :cond_a

    const-string v2, "mUiFactory"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_b

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    return-void

    :cond_c
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.UIRecyclerListView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.library.widget.UICommonTitleBar"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onInit(Lcom/miui/video/common/feed/entity/TinyCardEntity;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/miui/video/common/feed/entity/TinyCardEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onSubmitResult(ZLjava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    new-instance p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;-><init>()V

    const-string v0, "user_feedback_text"

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mUiFactory:Lcom/miui/video/feedback/card/FeedbackUIFactory;

    if-nez v0, :cond_0

    const-string v1, "mUiFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->mUiFactory:Lcom/miui/video/feedback/card/FeedbackUIFactory;

    if-nez v1, :cond_1

    const-string v2, "mUiFactory"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->getUILayoutType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->getLayoutTypeWithOffset(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLayoutType(I)V

    new-instance v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vInput:Landroid/widget/EditText;

    if-nez v1, :cond_2

    const-string v2, "vInput"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->itemType:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v2, "itemType"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setItem_type(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setRoleType(I)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v5, :cond_6

    check-cast v5, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v5, v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v5

    const-string v6, "(it as FeedRowEntity)[0]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRoleType()I

    move-result v5

    if-ne v5, v1, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, ""

    goto :goto_1

    :cond_8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1, v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v2, "(userMsg[0] as FeedRowEntity)[0]"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->add(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    iget-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz p1, :cond_9

    new-array v0, v1, [Lcom/miui/video/common/feed/entity/FeedRowEntity;

    aput-object p2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->addList(Ljava/util/List;)V

    :cond_9
    iget-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    goto :goto_2

    :cond_a
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, v4, p2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->scrollToPosition(ZI)V

    goto :goto_3

    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->vInput:Landroid/widget/EditText;

    if-nez p1, :cond_e

    const-string p2, "vInput"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/feedback/R$layout;->fragment_feedback_detail:I

    return v0
.end method
