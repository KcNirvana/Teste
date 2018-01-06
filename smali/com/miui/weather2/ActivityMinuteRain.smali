.class public Lcom/miui/weather2/ActivityMinuteRain;
.super Lcom/miui/weather2/be;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/weather2/model/r$a;
.implements Lcom/miui/weather2/view/IndexRefreshableView$a;


# instance fields
.field private a:Lcom/miui/weather2/structures/CityData;

.field private b:Lcom/miui/weather2/structures/MinuteRainData;

.field private g:Lcom/miui/weather2/tools/au;

.field private h:Z

.field private i:J

.field private j:Lcom/amap/api/maps2d/MapView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/miui/weather2/view/IndexRefreshableView;

.field private m:Lcom/miui/weather2/view/RadarCloudImageContainer;

.field private n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->h:Z

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030051

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0149

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0148

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/weather2/ActivityMinuteRain;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/miui/weather2/tools/au;

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/tools/au;-><init>(Lcom/miui/weather2/ActivityMinuteRain;Lcom/amap/api/maps2d/MapView;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->g()V

    const v0, 0x7f0f0145

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityMinuteRain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RadarCloudImageContainer;

    iput-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/RadarCloudImageContainer;->setAMapController(Lcom/miui/weather2/tools/au;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/au;->a(Lcom/miui/weather2/tools/s$a;)V

    const v0, 0x7f0f0137

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityMinuteRain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    iput-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityMinuteRain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f005a

    invoke-virtual {p0, v1}, Lcom/miui/weather2/ActivityMinuteRain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/IndexRefreshableView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v1, v0, p0}, Lcom/miui/weather2/view/IndexRefreshableView;->a(Landroid/widget/LinearLayout;Lcom/miui/weather2/view/IndexRefreshableView$a;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->b:Lcom/miui/weather2/structures/MinuteRainData;

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->b:Lcom/miui/weather2/structures/MinuteRainData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->b:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->setData(Lcom/miui/weather2/structures/MinuteRainData;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/b/c/f;->c()Lcom/amap/api/b/c/f;

    move-result-object v0

    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Lcom/amap/api/b/c/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/b/c/f;->c()Lcom/amap/api/b/c/f;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/amap/api/b/c/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    new-instance v0, Lcom/miui/weather2/view/l;

    invoke-direct {v0}, Lcom/miui/weather2/view/l;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/l;->a(Lcom/miui/weather2/structures/CityData;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/l;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "minute_rain_detail"

    const-string v1, "feedback"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 9

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->b:Lcom/miui/weather2/structures/MinuteRainData;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/weather2/ActivityMinuteRain;->b:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/MinuteRainData;->getFgUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->e()D

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->f()D

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/miui/weather2/ActivityMinuteRain;->h:Z

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/miui/weather2/model/r;->a(Lcom/miui/weather2/ActivityMinuteRain;DDLcom/miui/weather2/structures/CityData;ZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->a()V

    const-string v0, "minute_rain_detail"

    const-string v1, "refresh_manual"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->e()D

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->f()D

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/miui/weather2/ActivityMinuteRain;->h:Z

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/miui/weather2/model/r;->a(Lcom/miui/weather2/ActivityMinuteRain;DDLcom/miui/weather2/structures/CityData;ZZ)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->e()D

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->f()D

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->d()F

    move-result v6

    iget-object v7, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/weather2/model/t;->a(Landroid/content/Context;DDFLcom/miui/weather2/view/RadarCloudImageContainer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    const v0, 0x7f0900a7

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public a(DD)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->h:Z

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/CityData;->setLatitude(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/CityData;->setLongitude(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/MinuteRainData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->setData(Lcom/miui/weather2/structures/MinuteRainData;)V

    return-void
.end method

.method public a(Ljava/lang/String;DD)V
    .locals 10

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/miui/weather2/ActivityMinuteRain;->h:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v8, v7

    invoke-static/range {v1 .. v8}, Lcom/miui/weather2/model/r;->a(Lcom/miui/weather2/ActivityMinuteRain;DDLcom/miui/weather2/structures/CityData;ZZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Lcom/miui/weather2/structures/MinuteRainData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->setData(Lcom/miui/weather2/structures/MinuteRainData;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/weather2/ActivityMinuteRain;->f()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0f0002 -> :sswitch_0
        0x7f0f0149 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityMinuteRain;->setContentView(I)V

    const v0, 0x7f0f000e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityMinuteRain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/MapView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/MapView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "city_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iput-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "normal_click"

    const-string v1, "weather_style_notification_click"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityMinuteRain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/structures/CityData;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/weather2/ActivityMinuteRain;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityMinuteRain;->c()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityMinuteRain;->d()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityMinuteRain;->e()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->c()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->j()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->c()V

    iput-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityMinuteRain;->g:Lcom/miui/weather2/tools/au;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onPause()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->b()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->l:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->d()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->b()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityMinuteRain;->g()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->a()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->n:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->a()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->m:Lcom/miui/weather2/view/RadarCloudImageContainer;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->b()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->j:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/MapView;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/ActivityMinuteRain;->i:J

    return-void
.end method

.method protected onStop()V
    .locals 6

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    const-string v0, "time_minute_rain_detail"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/weather2/ActivityMinuteRain;->i:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;J)V

    return-void
.end method
