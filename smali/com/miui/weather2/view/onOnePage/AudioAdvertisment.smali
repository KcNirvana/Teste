.class public Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;
.super Lcom/miui/weather2/view/onOnePage/a;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/tools/ax$b;
.implements Lcom/miui/weather2/tools/ax$c;
.implements Lcom/miui/weather2/tools/q$a;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/miui/weather2/tools/ax;

.field private i:Landroid/media/AudioManager;

.field private j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/weather2/view/onOnePage/e;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/e;-><init>(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->k:Landroid/view/View$OnClickListener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->i:Landroid/media/AudioManager;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/f;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/f;-><init>(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Lcom/miui/weather2/tools/ax;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->h:Lcom/miui/weather2/tools/ax;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    const-string v0, "AUDIO_START"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getAudioStartMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/miui/weather2/structures/CityData;)V
    .locals 14

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v7}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v5, ""

    const-string v1, ""

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10, v12, v6, v7}, Lcom/miui/weather2/structures/ForecastData;->getWeatherDesc(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v10, v12}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureHigh(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v12}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureLow(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v10, v12, v7}, Lcom/miui/weather2/structures/ForecastData;->getWindConnection(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    :cond_1
    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    if-eqz v0, :cond_10

    const v5, 0x7f090028

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    invoke-static {v0, v7}, Lcom/miui/weather2/structures/AQIData;->getTitleWithAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-virtual {v7, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v5, 0x7f0900eb

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const v10, 0x7f0900f0

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v4, v11, v6

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_9

    move-object v4, v5

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f0900ec

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v3, v10, v6

    invoke-virtual {v7, v4, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_b

    move-object v3, v5

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x7f0900ee

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v7, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    move-object v2, v5

    :goto_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0900f1

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v7, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_e

    move-object v1, v5

    :goto_7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0900e8

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0900ea

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->f:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    :goto_8
    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setVisibility(I)V

    return-void

    :cond_8
    invoke-virtual {v10, v12}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureHigh(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v12}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureLow(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const-string v4, ""

    goto/16 :goto_2

    :cond_a
    const v4, 0x7f0900ed

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v3, v10, v6

    invoke-virtual {v7, v4, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_b
    const-string v3, ""

    goto/16 :goto_4

    :cond_c
    const v3, 0x7f0900ef

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v7, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_d
    const-string v2, ""

    goto/16 :goto_6

    :cond_e
    const-string v1, ""

    goto/16 :goto_7

    :cond_f
    move v0, v6

    goto :goto_8

    :cond_10
    move-object v0, v5

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->g:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    const-string v0, "AUDIO_FINISH"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getAudioFinishMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->i:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->i:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->i:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->i:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->h:Lcom/miui/weather2/tools/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->h:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ax;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->h:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ax;->c()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/view/onOnePage/g;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/g;-><init>(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/view/onOnePage/a;->setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/weather2/tools/q;->a(Ljava/lang/String;Lcom/miui/weather2/tools/q$a;)V

    :cond_0
    return-void
.end method

.method public setSpeeker(Lcom/miui/weather2/tools/ax;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/weather2/tools/ax;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->b(Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->h:Lcom/miui/weather2/tools/ax;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->h:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/tools/ax;->a(Lcom/miui/weather2/tools/ax$b;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/weather2/view/onOnePage/a;->setVisibility(I)V

    return-void
.end method
