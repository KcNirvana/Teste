.class public final Lcom/miui/video/common/feed/ui/condition/UIConditions;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIConditions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIConditions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIConditions.kt\ncom/miui/video/common/feed/ui/condition/UIConditions\n*L\n1#1,105:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/condition/UIConditions;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "mAdapter",
        "Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;",
        "title",
        "Landroid/widget/TextView;",
        "vIndicator",
        "Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;",
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
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

.field private title:Landroid/widget/TextView;

.field private vIndicator:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;


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

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_conditions:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->context:Landroid/content/Context;

    return-object v0
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/condition/UIConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->title:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/condition/UIConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->vIndicator:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.library.widget.scroll.indicator.ScrollIndicatorView"

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

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->context:Landroid/content/Context;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 8
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_16

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_16

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_4

    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_4

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "list[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/miui/video/common/feed/R$color;->c_blue_text_0C80FF:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/common/feed/R$color;->c_pw_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-nez v4, :cond_5

    new-instance v1, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v4}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->vIndicator:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    if-eqz v1, :cond_13

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    check-cast v4, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v1, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setAdapter(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;)V

    goto/16 :goto_5

    :cond_5
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->getList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-nez v4, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v4}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->getList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_11

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->getList()Ljava/util/List;

    move-result-object v5

    :cond_a
    if-nez v5, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_13

    iget-object v5, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-nez v5, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v5}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->getList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    check-cast v5, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v5

    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "list[index]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v6}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v6

    if-eq v5, v6, :cond_10

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-eqz v1, :cond_f

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->setList(Ljava/util/List;)V

    :cond_f
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->notifyDataSetChanged()V

    goto :goto_5

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-eqz v1, :cond_12

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->setList(Ljava/util/List;)V

    :cond_12
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->mAdapter:Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/miui/video/common/feed/ui/condition/ConditionAdapter;->notifyDataSetChanged()V

    :cond_13
    :goto_5
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->vIndicator:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    if-eqz v1, :cond_14

    new-instance v4, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;

    iget-object v5, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->context:Landroid/content/Context;

    const/high16 v6, -0x10000

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;-><init>(Landroid/content/Context;II)V

    check-cast v4, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    invoke-virtual {v1, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setScrollBar(Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;)V

    :cond_14
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->vIndicator:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    if-eqz v1, :cond_15

    new-instance v4, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$1;

    invoke-direct {v4}, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$1;-><init>()V

    invoke-virtual {v4, p1, v3}, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$1;->setColor(II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setBold(Z)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    invoke-virtual {v1, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;)V

    :cond_15
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions;->vIndicator:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    if-eqz p1, :cond_16

    new-instance v1, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;-><init>(Lcom/miui/video/common/feed/ui/condition/UIConditions;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast v1, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V

    :cond_16
    return-void
.end method
