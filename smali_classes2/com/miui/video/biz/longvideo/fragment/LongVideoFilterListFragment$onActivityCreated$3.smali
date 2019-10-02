.class public final Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;
.super Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
.source "LongVideoFilterListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongVideoFilterListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongVideoFilterListFragment.kt\ncom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3\n*L\n1#1,111:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J(\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "init",
        "",
        "onNewsClick",
        "context",
        "Landroid/content/Context;",
        "actionId",
        "",
        "data",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "viewObject",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
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
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
            "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_filter_click:I

    const-class v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v2, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3$init$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3$init$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;)V

    check-cast v2, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method public final onNewsClick(Landroid/content/Context;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/common/feed/entity/FeedRowEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewObject"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    const-string p2, "all"

    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "list[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "list[i]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p2

    const-string p1, "list[i].item_id"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getRow_id()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;

    invoke-static {p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;->access$getDataSource$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment;)Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getRow_id()Ljava/lang/String;

    move-result-object p3

    const-string p4, "data.row_id"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->putCondition(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object p1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    return-void

    :cond_8
    return-void
.end method
