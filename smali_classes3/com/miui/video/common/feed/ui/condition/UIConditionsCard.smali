.class public final Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIConditionsCard.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIConditionsCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIConditionsCard.kt\ncom/miui/video/common/feed/ui/condition/UIConditionsCard\n*L\n1#1,75:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "conditionRv",
        "Landroid/support/v7/widget/RecyclerView;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "currentSelected",
        "getCurrentSelected",
        "()I",
        "setCurrentSelected",
        "(I)V",
        "mAdapter",
        "Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;",
        "title",
        "Landroid/widget/TextView;",
        "initFindViews",
        "",
        "setData",
        "position",
        "entity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "common_feed_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private conditionRv:Landroid/support/v7/widget/RecyclerView;

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentSelected:I

.field private mAdapter:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_conditions_rv:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentSelected()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->currentSelected:I

    return v0
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->title:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->condition_rv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->context:Landroid/content/Context;

    return-void
.end method

.method public final setCurrentSelected(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->currentSelected:I

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 4
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_a

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_a

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->mAdapter:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->context:Landroid/content/Context;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {p1, v2, v3}, Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->mAdapter:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->mAdapter:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    check-cast v2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->mAdapter:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    if-eqz p1, :cond_3

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;->update(Ljava/util/List;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->mAdapter:Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;

    if-eqz p1, :cond_4

    new-instance v2, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;-><init>(Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast v2, Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$OnItemClickListener;

    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter;->setOnItemClickListener(Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$OnItemClickListener;)V

    :cond_4
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_a

    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_9

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "list[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v2

    if-ne v2, p2, :cond_8

    iput v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->currentSelected:I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->currentSelected:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_a

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->currentSelected:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_a
    return-void
.end method
