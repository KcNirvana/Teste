.class public Lcom/miui/weather2/ActivityAqiDetail;
.super Lcom/miui/weather2/be;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/weather2/model/ag$e;
.implements Lcom/miui/weather2/view/IndexRefreshableView$a;


# instance fields
.field private a:Lcom/miui/weather2/structures/CityData;

.field private b:Lcom/miui/weather2/structures/WeatherData;

.field private g:J

.field private h:Lcom/miui/weather2/view/WeatherMapView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/miui/weather2/view/AqiQualityFirstPart;

.field private l:Lcom/miui/weather2/view/AqiQualitySecondPart;

.field private m:Lcom/miui/weather2/view/AqiQualityThirdPart;

.field private n:Lcom/miui/weather2/view/AqiQualityFourthPart;

.field private o:Lcom/miui/weather2/view/IndexRefreshableView;

.field private p:Lcom/miui/weather2/view/EnableListenScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityAqiDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    sget-object v0, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    invoke-virtual {v0}, Lcom/miui/weather2/model/k;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string v0, "notification_aqi_change_click"

    const-string v1, "better"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    invoke-virtual {v0}, Lcom/miui/weather2/model/k;->a()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "notification_aqi_change_click"

    const-string v1, "worse"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    invoke-virtual {v0}, Lcom/miui/weather2/model/k;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, "notification_aqi_change_click"

    const-string v1, "over"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityAqiDetail;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityAqiDetail;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityAqiDetail;)Lcom/miui/weather2/view/WeatherMapView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    return-object v0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/AqiQualityFirstPart;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->k:Lcom/miui/weather2/view/AqiQualityFirstPart;

    const v0, 0x7f0f001a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/AqiQualitySecondPart;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->l:Lcom/miui/weather2/view/AqiQualitySecondPart;

    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/AqiQualityThirdPart;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->m:Lcom/miui/weather2/view/AqiQualityThirdPart;

    const v0, 0x7f0f000c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/AqiQualityFourthPart;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->n:Lcom/miui/weather2/view/AqiQualityFourthPart;

    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/IndexRefreshableView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p0}, Lcom/miui/weather2/view/IndexRefreshableView;->a(Landroid/widget/LinearLayout;Lcom/miui/weather2/view/IndexRefreshableView$a;)V

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/EnableListenScrollView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->p:Lcom/miui/weather2/view/EnableListenScrollView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->p:Lcom/miui/weather2/view/EnableListenScrollView;

    new-instance v1, Lcom/miui/weather2/b;

    invoke-direct {v1, p0}, Lcom/miui/weather2/b;-><init>(Lcom/miui/weather2/ActivityAqiDetail;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/EnableListenScrollView;->setOnScrollChangeListener(Lcom/miui/weather2/view/EnableListenScrollView$a;)V

    return-void
.end method

.method private b(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/weather2/ActivityAqiDetail;->b:Lcom/miui/weather2/structures/WeatherData;

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->k:Lcom/miui/weather2/view/AqiQualityFirstPart;

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->b:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/AqiQualityFirstPart;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->l:Lcom/miui/weather2/view/AqiQualitySecondPart;

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->b:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->m:Lcom/miui/weather2/view/AqiQualityThirdPart;

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->b:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/AqiQualityThirdPart;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->n:Lcom/miui/weather2/view/AqiQualityFourthPart;

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->setCityData(Lcom/miui/weather2/structures/CityData;)V

    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->p:Lcom/miui/weather2/view/EnableListenScrollView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/EnableListenScrollView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->p:Lcom/miui/weather2/view/EnableListenScrollView;

    iget-object v2, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherMapView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030015

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

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->b:Lcom/miui/weather2/structures/WeatherData;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/weather2/ActivityAqiDetail;->b:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getFgUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-static {p0, p0, v0}, Lcom/miui/weather2/model/ag;->a(Landroid/content/Context;Lcom/miui/weather2/model/ag$e;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->a()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-static {p0, p0, v0}, Lcom/miui/weather2/model/ag;->a(Landroid/content/Context;Lcom/miui/weather2/model/ag$e;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;

    const-string v0, "aqi_detail"

    const-string v1, "refresh_manual_aqi"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    const v0, 0x7f0900a7

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityAqiDetail;->b(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->o:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f0002
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityAqiDetail;->c()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityAqiDetail;->b()V

    const v0, 0x7f0f000e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherMapView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/WeatherMapView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-static {p0, p0, v0}, Lcom/miui/weather2/model/ag;->a(Landroid/content/Context;Lcom/miui/weather2/model/ag$e;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAqiDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aqiStatus"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityAqiDetail;->b(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityAqiDetail;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherMapView;->c()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->n:Lcom/miui/weather2/view/AqiQualityFourthPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->n:Lcom/miui/weather2/view/AqiQualityFourthPart;

    invoke-virtual {v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onPause()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherMapView;->b()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->l:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-virtual {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherMapView;->a()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityAqiDetail;->d()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->h:Lcom/miui/weather2/view/WeatherMapView;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/WeatherMapView;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/ActivityAqiDetail;->g:J

    return-void
.end method

.method protected onStop()V
    .locals 6

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    const-string v0, "time_aqi_detail"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/weather2/ActivityAqiDetail;->g:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;J)V

    return-void
.end method
