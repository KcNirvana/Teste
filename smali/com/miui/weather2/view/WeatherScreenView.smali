.class public Lcom/miui/weather2/view/WeatherScreenView;
.super Lmiui/widget/ScreenView;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScreenView$SnapScreenOnceNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/WeatherScreenView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/weather2/view/WeatherScreenView$a;

.field private b:Z

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->c:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->c:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->c:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    return-void
.end method

.method private a(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/weather2/view/WeatherScreenView;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v3, 0x7f0f00b1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    aget v5, v5, v1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    aget v5, v5, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/weather2/view/WeatherScreenView;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    aget v5, v5, v1

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherScreenView;->d:[I

    aget v5, v5, v1

    add-int/2addr v5, v3

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->b:Z

    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Lmiui/widget/ScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onSnapCancelled(Lmiui/widget/ScreenView;)V
    .locals 0

    return-void
.end method

.method public onSnapEnd(Lmiui/widget/ScreenView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScreenView;->getCurrentScreenIndex()I

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/WeatherScreenView;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScreenView;->a:Lcom/miui/weather2/view/WeatherScreenView$a;

    invoke-interface {v1, v0}, Lcom/miui/weather2/view/WeatherScreenView$a;->e(I)V

    iput v0, p0, Lcom/miui/weather2/view/WeatherScreenView;->c:I

    :cond_0
    return-void
.end method

.method public setCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/WeatherScreenView;->b:Z

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    iput p1, p0, Lcom/miui/weather2/view/WeatherScreenView;->c:I

    return-void
.end method

.method public setOnPageChangedListener(Lcom/miui/weather2/view/WeatherScreenView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherScreenView;->a:Lcom/miui/weather2/view/WeatherScreenView$a;

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p0}, Lcom/miui/weather2/view/WeatherScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method
