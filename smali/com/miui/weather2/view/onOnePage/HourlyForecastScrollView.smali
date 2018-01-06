.class public Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;
.super Lcom/miui/weather2/view/h;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->a:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->a:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/ContentInVisibleAreaView;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    invoke-virtual {v0, v3}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    aget v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    aget v3, v3, v2

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->setLeftBorad(F)V

    :goto_1
    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->c:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    aget v3, v3, v2

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->c:I

    if-gt v3, v4, :cond_1

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->c:I

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->b:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->setRightBorad(F)V

    :goto_2
    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->setLeftBorad(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->setRightBorad(F)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/view/h;->onFinishInflate()V

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->a:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->c:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/miui/weather2/view/h;->onLayout(ZIIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->a(Z)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/h;->onScrollChanged(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->a(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/weather2/view/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->d:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "normal_scroll"

    const-string v2, "hourly_forecast"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->d:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
