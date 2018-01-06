.class public Lcom/miui/weather2/view/onOnePage/CurrentConditions;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final D:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field public a:D

.field public b:I

.field private c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "weather.com.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "twc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->z:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a:D

    const/16 v0, 0x63

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->A:Ljava/lang/String;

    sget v0, Lcom/miui/weather2/bf;->f:I

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->B:I

    iput v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->C:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/miui/weather2/structures/AQIData;)V
    .locals 1

    invoke-virtual {p5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/weather2/structures/AQIData;->getRealTimeAqiIcon(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    invoke-static {v0, p1}, Lcom/miui/weather2/structures/AQIData;->getTitleWithPrefixAndAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->D:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "logo"

    invoke-static {v4, v3}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->C:I

    return v0
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->A:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageAdvertisment()Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    return-object v0
.end method

.method public getIsNight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->z:Z

    return v0
.end method

.method public getWeatherType()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->b:I

    return v0
.end method

.method public getWindPower()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a:D

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 4

    const v3, 0x7f0f0067

    const v2, 0x7f0f005e

    const v1, 0x7f0f001c

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    const v0, 0x7f0f0167

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->d:Landroid/view/View;

    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    const v0, 0x7f0f0169

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->f:Landroid/widget/TextView;

    const v0, 0x7f0f016a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->g:Landroid/widget/TextView;

    const v0, 0x7f0f016b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->h:Landroid/view/View;

    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->i:Landroid/widget/ImageView;

    const v0, 0x7f0f016d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->j:Landroid/widget/TextView;

    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->k:Landroid/widget/TextView;

    const v0, 0x7f0f0171

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->l:Landroid/view/View;

    const v0, 0x7f0f0172

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->p:Landroid/widget/TextView;

    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->t:Landroid/widget/TextView;

    const v0, 0x7f0f0173

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->u:Landroid/view/View;

    const v0, 0x7f0f016f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->v:Landroid/widget/TextView;

    const v0, 0x7f0f0170

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->w:Landroid/view/View;

    invoke-static {}, Lcom/miui/weather2/tools/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0175

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->x:Landroid/widget/LinearLayout;

    :cond_0
    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->y:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v1}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setCityIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->C:I

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/CityData;)V
    .locals 12

    const/4 v3, 0x1

    const/4 v11, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->B:I

    sget v2, Lcom/miui/weather2/bf;->f:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v2, v5

    :goto_1
    if-nez v4, :cond_5

    move-object v10, v5

    :goto_2
    if-nez v2, :cond_6

    const/16 v0, 0x63

    :goto_3
    iput v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->b:I

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/miui/weather2/structures/WeatherData;->convertSpeedToLevelDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-static {v0, v8, v9}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a:D

    :cond_2
    if-nez v2, :cond_7

    const-string v0, ""

    :goto_4
    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    sget-object v8, Lcom/miui/weather2/bf;->b:Landroid/graphics/Typeface;

    invoke-static {v1, v2, v0, v8}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/miui/weather2/bf;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a01b3

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v8, -0x2

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v0

    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->z:Z

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v8, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->g:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v6

    :goto_7
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-nez v0, :cond_13

    if-nez v4, :cond_b

    :goto_8
    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    if-eq v0, v11, :cond_c

    move v8, v3

    :goto_9
    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v10}, Lcom/miui/weather2/structures/MinuteRainData;->getHeadDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    move v9, v3

    :goto_a
    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    if-ne v0, v11, :cond_e

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    if-eqz v8, :cond_11

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->n:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->p:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/miui/weather2/structures/AQIData;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/h;

    invoke-direct {v2, p0, v1, p1}, Lcom/miui/weather2/view/onOnePage/h;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_c
    if-eqz v9, :cond_12

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->r:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lcom/miui/weather2/structures/MinuteRainData;->getHeadIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->s:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/miui/weather2/structures/MinuteRainData;->getHeadDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/i;

    invoke-direct {v2, p0, p1}, Lcom/miui/weather2/view/onOnePage/i;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Lcom/miui/weather2/structures/CityData;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/l;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/l;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/m;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/m;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->d:Landroid/view/View;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/n;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/n;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->l:Landroid/view/View;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/o;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/o;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/p;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/view/onOnePage/p;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherTypeNum()I

    move-result v0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getTemperature()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a01b4

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    :cond_9
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->b:I

    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->z:Z

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_a
    move v2, v7

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v4}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v5

    goto/16 :goto_8

    :cond_c
    move v8, v7

    goto/16 :goto_9

    :cond_d
    move v9, v7

    goto/16 :goto_a

    :cond_e
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->k:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/miui/weather2/structures/AQIData;)V

    goto/16 :goto_b

    :cond_f
    if-eqz v8, :cond_10

    if-eqz v9, :cond_10

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->u:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_10
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_11
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->m:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    :cond_12
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->q:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    :cond_13
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez v4, :cond_16

    move-object v0, v5

    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->x:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/miui/weather2/view/onOnePage/j;

    invoke-direct {v8, p0, v1, v0}, Lcom/miui/weather2/view/onOnePage/j;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    if-nez v4, :cond_17

    :goto_11
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    if-ne v0, v11, :cond_18

    :cond_15
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_12
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->v:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/k;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/view/onOnePage/k;-><init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e

    :cond_16
    invoke-virtual {v4}, Lcom/miui/weather2/structures/WeatherData;->getLogoLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_17
    invoke-virtual {v4}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v5

    goto :goto_11

    :cond_18
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->v:Landroid/widget/TextView;

    const v2, 0x7f090067

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v1}, Lcom/miui/weather2/structures/AQIData;->getAqiValue(Lcom/miui/weather2/structures/AQIData;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/miui/weather2/structures/AQIData;->getBrandArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {v5}, Lcom/miui/weather2/structures/AQIData;->getBrandArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Brand;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Brand;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_19
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->w:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_1a
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method public setIsNight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->z:Z

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->B:I

    return-void
.end method
