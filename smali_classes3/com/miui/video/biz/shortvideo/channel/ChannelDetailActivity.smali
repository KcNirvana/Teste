.class public final Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "ChannelDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;
    }
.end annotation

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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00102\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;",
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "container",
        "Landroid/widget/FrameLayout;",
        "vTitleBar",
        "Lcom/miui/video/common/library/widget/UICommonTitleBar;",
        "initViewsValue",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setLayoutResId",
        "",
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
.field public static final Companion:Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;

.field public static final KEY_BUNDLE:Ljava/lang/String; = "bundle"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_INTENT:Ljava/lang/String; = "channel_item"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private container:Landroid/widget/FrameLayout;

.field private vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->Companion:Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initViewsValue()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "channel_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getSubChannel()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;->Companion:Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment$Companion;

    const-string v2, "channelItem"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment$Companion;->newInstance(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/biz/shortvideo/trending/fragment/PlayListChannelFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/base/VideoBaseFragment;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->Companion:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;

    const-string v2, "channelItem"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;->newInstance(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/base/VideoBaseFragment;

    :goto_1
    sget v2, Lcom/miui/video/biz/shortvideo/R$id;->ui_title_bar:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.ui_title_bar)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iput-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-nez v2, :cond_2

    const-string v3, "vTitleBar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v2, v0}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->vTitleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    if-nez v0, :cond_4

    const-string v2, "vTitleBar"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$initViewsValue$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$initViewsValue$1;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setOnClickBack(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->container:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_fl_contain:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->container:Landroid/widget/FrameLayout;

    :cond_5
    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_fl_contain:I

    check-cast v1, Landroid/support/v4/app/Fragment;

    sget-object v2, Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->runFragment(ILandroid/support/v4/app/Fragment;Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;Z)V

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

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->activity_channel_detail:I

    return v0
.end method
