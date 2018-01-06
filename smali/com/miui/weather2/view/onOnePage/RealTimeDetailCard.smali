.class public Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const v2, 0x7f0f0067

    const v1, 0x7f0f001c

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->g:Landroid/widget/TextView;

    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->j:Landroid/widget/TextView;

    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->m:Landroid/widget/TextView;

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 9

    const/16 v2, 0x8

    const/4 v8, 0x1

    const v7, 0x7f09013d

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "Wth2:RealTimeDetailCard"

    const-string v1, "setData() data is null, return"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getTodayData()Lcom/miui/weather2/structures/TodayData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->setData(Lcom/miui/weather2/structures/TodayData;)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->c:Landroid/widget/TextView;

    if-nez v2, :cond_5

    const v0, 0x7f0900c4

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->d:Landroid/widget/TextView;

    if-nez v2, :cond_6

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->f:Landroid/widget/TextView;

    const v3, 0x7f0900c2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getHumidity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->i:Landroid/widget/TextView;

    const v3, 0x7f09007a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->j:Landroid/widget/TextView;

    if-nez v2, :cond_8

    const-string v0, ""

    :goto_4
    sget-object v4, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-static {v1, v3, v0, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->l:Landroid/widget/TextView;

    const v3, 0x7f09007c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getPressure()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWindDirection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/weather2/structures/WeatherData;->getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v0, 0x7f090139

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getHumidity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getFeelTemp()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const v0, 0x7f09013a

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getPressure()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
