.class Lcom/miui/weather2/view/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/widget/BaseAdapter;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/miui/weather2/view/WeatherDynamicListView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    iput-object p2, p0, Lcom/miui/weather2/view/ah;->a:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lcom/miui/weather2/view/ah;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v0, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v2

    invoke-static {v6, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v7, Lcom/miui/weather2/view/ai;

    invoke-direct {v7, p0, v6}, Lcom/miui/weather2/view/ai;-><init>(Lcom/miui/weather2/view/ah;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v0, v3, v1

    iget-object v7, p0, Lcom/miui/weather2/view/ah;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    iget-object v0, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$2300(Lcom/miui/weather2/view/WeatherDynamicListView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v8, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v8}, Lcom/miui/weather2/view/WeatherDynamicListView;->getDividerHeight()I

    move-result v8

    add-int/2addr v0, v8

    iget-object v8, p0, Lcom/miui/weather2/view/ah;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$2300(Lcom/miui/weather2/view/WeatherDynamicListView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/weather2/view/aj;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/aj;-><init>(Lcom/miui/weather2/view/ah;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1900(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v10
.end method
