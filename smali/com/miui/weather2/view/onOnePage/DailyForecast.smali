.class public Lcom/miui/weather2/view/onOnePage/DailyForecast;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/miui/weather2/structures/WeatherData;

.field private l:Lcom/miui/weather2/structures/ForecastData;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->e:Landroid/graphics/Paint;

    sget v0, Lcom/miui/weather2/bf;->f:I

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->o:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->e:Landroid/graphics/Paint;

    sget v0, Lcom/miui/weather2/bf;->f:I

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->o:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->e:Landroid/graphics/Paint;

    sget v0, Lcom/miui/weather2/bf;->f:I

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->o:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->e:Landroid/graphics/Paint;

    const v2, 0x7f0b00b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(IZI)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->a:I

    iput-boolean p2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->b:Z

    iput p3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->c:I

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->l:Lcom/miui/weather2/structures/ForecastData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    check-cast v0, Ljava/lang/String;

    const-string v3, "moreTitle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "normal_click"

    const-string v2, "daily_forecast_more"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v5, v1

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "normal_click"

    const-string v1, "daily_forecast"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->k:Lcom/miui/weather2/structures/WeatherData;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->m:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->b:Z

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->n:Ljava/lang/String;

    iget v6, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->a:I

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->c:I

    invoke-static/range {v0 .. v7}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Ljava/lang/String;ZLjava/lang/String;III)V

    :cond_0
    return-void

    :cond_1
    const-string v3, "list1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "normal_click"

    const-string v2, "daily_forecast_list1"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v5, v1

    goto :goto_0

    :cond_2
    const-string v3, "list2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x2

    const-string v0, "normal_click"

    const-string v2, "daily_forecast_list2"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "list3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x3

    const-string v0, "normal_click"

    const-string v2, "daily_forecast_list3"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    move v5, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->f:Landroid/widget/TextView;

    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->f:Landroid/widget/TextView;

    const-string v1, "moreTitle"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->h:Landroid/widget/LinearLayout;

    const-string v1, "list1"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->i:Landroid/widget/LinearLayout;

    const-string v1, "list2"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->j:Landroid/widget/LinearLayout;

    const-string v1, "list3"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->m:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 18

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->o:I

    sget v3, Lcom/miui/weather2/bf;->f:I

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->o:I

    sget v3, Lcom/miui/weather2/bf;->h:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->h:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->i:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->j:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/weather2/view/onOnePage/DailyForecast;->k:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/miui/weather2/structures/ForecastData;->getDayNum()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->h:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->i:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->j:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->l:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8}, Lcom/miui/weather2/structures/ForecastData;->getDayNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v2, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    add-int/lit8 v2, v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v9, v3}, Lcom/miui/weather2/structures/ForecastData;->getDateDesc(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->b:Z

    invoke-virtual {v8, v2, v3, v9}, Lcom/miui/weather2/structures/ForecastData;->getWeatherDesc(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v8, v2, v9}, Lcom/miui/weather2/structures/ForecastData;->getAqiDesc(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v2

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v8, v2, v3, v9}, Lcom/miui/weather2/structures/ForecastData;->getCelsiusAndFahrenheitDescConnection(ZILandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v8, v2}, Lcom/miui/weather2/structures/ForecastData;->getWeatherTypes(I)I

    move-result v16

    const v2, 0x7f0f009a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f009d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f0f0098

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0f009c

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0099

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->b:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-static/range {v16 .. v16}, Lcom/miui/weather2/structures/WeatherData;->getTransparentIconNightByWeatherType(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    const v6, 0x7f0f009b

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_2

    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/miui/weather2/structures/WeatherData;->getTransparentIconByWeatherType(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_7
    invoke-static/range {v16 .. v16}, Lcom/miui/weather2/structures/WeatherData;->getTransparentIconByWeatherType(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->f:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080003

    invoke-virtual {v8}, Lcom/miui/weather2/structures/ForecastData;->getMinNum()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/miui/weather2/structures/ForecastData;->getMinNum()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setLocationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->n:Ljava/lang/String;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecast;->o:I

    return-void
.end method
