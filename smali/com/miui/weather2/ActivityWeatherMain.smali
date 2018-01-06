.class public Lcom/miui/weather2/ActivityWeatherMain;
.super Lcom/miui/weather2/be;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivityWeatherMain$a;,
        Lcom/miui/weather2/ActivityWeatherMain$c;,
        Lcom/miui/weather2/ActivityWeatherMain$f;,
        Lcom/miui/weather2/ActivityWeatherMain$d;,
        Lcom/miui/weather2/ActivityWeatherMain$e;,
        Lcom/miui/weather2/ActivityWeatherMain$b;,
        Lcom/miui/weather2/ActivityWeatherMain$g;
    }
.end annotation


# static fields
.field private static F:Lcom/miui/weather2/tools/av;

.field private static N:Ljava/lang/Object;

.field private static final af:Ljava/lang/String;

.field private static final ak:[Ljava/lang/String;


# instance fields
.field private A:Lcom/miui/weather2/model/ag;

.field private B:Lcom/miui/weather2/ActivityWeatherMain$c;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/miui/weather2/tools/w;

.field private E:Landroid/hardware/SensorManager;

.field private G:Lcom/miui/weather2/tools/ax;

.field private H:Landroid/telephony/TelephonyManager;

.field private I:Lcom/miui/weather2/receiver/a;

.field private J:Lcom/miui/weather2/structures/AdvertismentData;

.field private K:Landroid/animation/ValueAnimator;

.field private final L:Landroid/telephony/PhoneStateListener;

.field private M:I

.field private O:Ljava/lang/String;

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Lcom/miui/weather2/tools/bd;

.field private U:I

.field private V:I

.field private W:Z

.field private X:I

.field private final Y:I

.field private Z:Z

.field a:Z

.field private aa:I

.field private ab:Ljava/lang/String;

.field private ac:Z

.field private ad:I

.field private ae:Z

.field private ag:Ljava/lang/String;

.field private ah:I

.field private ai:Z

.field private aj:Lcom/miui/weather2/ActivityWeatherMain$b;

.field private al:F

.field b:Z

.field private g:Lcom/miui/weather2/view/WeatherScreenView;

.field private h:Lcom/miui/weather2/view/CircleIndicator;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/miui/weather2/view/RefreshableView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Lmiui/app/AlertDialog;

.field private r:Lcom/miui/weather2/view/ShareWaitCover;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ListView;

.field private v:Landroid/widget/LinearLayout$LayoutParams;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Ljava/lang/Object;

.field private z:Lcom/miui/weather2/model/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/weather2/ActivityWeatherMain;->N:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Screenshots/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/ActivityWeatherMain;->af:Ljava/lang/String;

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

    sput-object v0, Lcom/miui/weather2/ActivityWeatherMain;->ak:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->n:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->o:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->p:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->s:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->w:Landroid/view/View;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->x:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->y:Ljava/lang/Object;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->A:Lcom/miui/weather2/model/ag;

    new-instance v0, Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/ActivityWeatherMain$c;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    new-instance v0, Lcom/miui/weather2/tools/ax;

    invoke-direct {v0}, Lcom/miui/weather2/tools/ax;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->G:Lcom/miui/weather2/tools/ax;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->H:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->I:Lcom/miui/weather2/receiver/a;

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->J:Lcom/miui/weather2/structures/AdvertismentData;

    new-instance v0, Lcom/miui/weather2/ActivityWeatherMain$g;

    invoke-direct {v0, p0}, Lcom/miui/weather2/ActivityWeatherMain$g;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->L:Landroid/telephony/PhoneStateListener;

    iput v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->Q:Z

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->R:Z

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->S:Z

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->T:Lcom/miui/weather2/tools/bd;

    iput v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->U:I

    iput v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->V:I

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->W:Z

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Y:I

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->Z:Z

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->ac:Z

    iput v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->ad:I

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->ae:Z

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->ai:Z

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->al:F

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v6}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureDescConnection(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v3, :cond_5

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherTypeNum()I

    move-result v1

    invoke-static {}, Lcom/miui/weather2/tools/bi;->i()Z

    move-result v7

    invoke-static {v1, p0, v7}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v3, :cond_6

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v1

    invoke-static {v1, p0}, Lcom/miui/weather2/structures/AQIData;->getTitleWithPrefixAndAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v3, :cond_7

    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    const v7, 0x7f0900d5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getType()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getLevel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lcom/miui/weather2/structures/WeatherData;->getAlertArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    goto/16 :goto_0

    :cond_9
    const-string v1, ""

    move v3, v2

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_b

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900d4

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v9

    invoke-virtual {p0, v1, v3}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic A(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->s()V

    return-void
.end method

.method static synthetic B(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/model/ag;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->A:Lcom/miui/weather2/model/ag;

    return-object v0
.end method

.method private B()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f012d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->l()V

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic C(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->y:Ljava/lang/Object;

    return-object v0
.end method

.method private C()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.weather2.FROM_FOREGROUND_TO_WAKE_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.receiver.ReceiverUpdateWeather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    return-object v0
.end method

.method static synthetic E(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->v()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->w()V

    return-void
.end method

.method static synthetic H(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->l()V

    return-void
.end method

.method static synthetic I(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->t()V

    return-void
.end method

.method static synthetic J(Lcom/miui/weather2/ActivityWeatherMain;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->V:I

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private a(FLcom/miui/weather2/view/WeatherScrollView;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0f005b

    invoke-virtual {p2, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain;->x:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/AdvertismentData;)Lcom/miui/weather2/structures/AdvertismentData;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain;->J:Lcom/miui/weather2/structures/AdvertismentData;

    return-object p1
.end method

.method private a(I)Lcom/miui/weather2/structures/CityData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/structures/CityData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/tools/ax;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->G:Lcom/miui/weather2/tools/ax;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(FZ)V
    .locals 6

    const/16 v5, 0xa0

    const/4 v4, 0x1

    const/4 v2, 0x0

    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    const-string v1, "onlyfirst"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    const-string v1, "updispeardownshow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->al:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->X:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->X:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ac:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    const-string v1, "onlyfirst"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ac:Z

    if-nez v0, :cond_2

    const-string v0, "weather_BottomBar_bottombar_show"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "normal_view"

    const-string v1, "bottom_bar"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->ac:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    const-string v1, "updispeardownshow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->al:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->X:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ac:Z

    if-nez v0, :cond_1

    const-string v0, "weather_BottomBar_bottombar_show"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "normal_view"

    const-string v1, "bottom_bar"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->ac:Z

    goto :goto_0
.end method

.method private a(II)V
    .locals 11

    const/4 v2, 0x0

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "Wth2:ActivityWeatherMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewWeatherData() index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",showType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->b(I)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->x:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->j:Landroid/widget/ImageView;

    const v8, 0x7f02000b

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    const-string v8, "stay"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->j:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v4, v7}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->setData(Lcom/miui/weather2/structures/CityData;)V

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->ah:I

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v8, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v8}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getWindPower()D

    move-result-wide v8

    invoke-virtual {v4, v3, v8, v9, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(IDI)V

    if-nez v1, :cond_e

    :goto_5
    invoke-static {p0, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/TodayData;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->ah:I

    iget-boolean v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    invoke-virtual {v0, v2, v3, p1}, Lcom/miui/weather2/view/WeatherScrollView;->a(IZI)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    iget-boolean v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    invoke-virtual {v2, v3}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->setIsNight(Z)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v2, p1}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->setCityIndex(I)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v2, p2}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->setShowType(I)V

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->setCityName(Ljava/lang/String;)V

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->g:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->setCityName(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->f:Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->setData(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->setData(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v2, p2}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setShowType(I)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v2, v7, v3}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->a(Lcom/miui/weather2/structures/CityData;Landroid/view/View;)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setData(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v2, v7, v3, v4}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/structures/CityData;Landroid/view/View;Landroid/view/View;)V

    if-nez v7, :cond_10

    const-string v2, ""

    move-object v3, v2

    :goto_7
    if-nez v7, :cond_11

    const-string v2, ""

    :goto_8
    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v4, v3}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setCityName(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v3, v2}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setLocationKey(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->g:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-virtual {v2, v6}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->g:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->setData(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_6
    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v3}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getIsNight()Z

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(ZI)V

    invoke-static {}, Lcom/miui/weather2/tools/bi;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->h:Lcom/miui/weather2/view/onOnePage/InternationalDetails;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->setData(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getBrandInfo()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getBrandInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getLogoType()I

    move-result v2

    if-eqz v2, :cond_12

    move v2, v5

    :goto_9
    iput-boolean v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->S:Z

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getBrandInfo()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/structures/BrandInfo;

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/ImageView;Lcom/miui/weather2/structures/BrandInfo;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_8

    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/structures/BrandInfo;

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/ImageView;Lcom/miui/weather2/structures/BrandInfo;)V

    :cond_8
    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    if-ne v1, p1, :cond_9

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/structures/CityData;)V

    :cond_9
    if-eqz v7, :cond_0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->W(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->R(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->ai:Z

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getLocateFlag()I

    move-result v1

    if-ne v1, v5, :cond_13

    move v1, v5

    :goto_a
    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    iput-boolean v6, p0, Lcom/miui/weather2/ActivityWeatherMain;->ai:Z

    :cond_a
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getLocateFlag()I

    move-result v7

    if-ne v7, v5, :cond_b

    move v6, v5

    :cond_b
    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/weather2/view/WeatherScrollView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->j:Landroid/widget/ImageView;

    const v8, 0x7f02000c

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    iget-object v3, v0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v3}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getWeatherType()I

    move-result v3

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getTodayData()Lcom/miui/weather2/structures/TodayData;

    move-result-object v2

    goto/16 :goto_5

    :cond_f
    const-string v2, ""

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v7}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_12
    move v2, v6

    goto/16 :goto_9

    :cond_13
    move v1, v6

    goto :goto_a

    :cond_14
    move-object v3, v2

    goto/16 :goto_3

    :cond_15
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private a(Landroid/widget/ListView;Lcom/miui/weather2/structures/CityData;Z)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->Y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f090097

    invoke-virtual {p0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->Q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->G:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v2}, Lcom/miui/weather2/tools/ax;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f090098

    invoke-virtual {p0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    if-eqz v0, :cond_4

    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/miui/weather2/ActivityWeatherMain$d;

    const v3, 0x7f030049

    const v4, 0x7f0f0129

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/ActivityWeatherMain$d;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Landroid/content/Context;II[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/ActivityWeatherMain;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/ActivityWeatherMain;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/CityData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/structures/CityData;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/WeatherData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/structures/WeatherData;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/view/WeatherScrollView;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/view/WeatherScrollView;IIII)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/miui/weather2/structures/CityData;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x8

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v0, v1

    :goto_1
    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/TodayData;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v2, :cond_5

    move-object v0, v1

    :goto_2
    if-nez v2, :cond_6

    :goto_3
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RealTimeData;->getTemperature()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v4, v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Typeface;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v0

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->o:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconNightByWeatherType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getTodayData()Lcom/miui/weather2/structures/TodayData;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherTypeNum()I

    move-result v0

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->o:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconByWeatherType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(Lcom/miui/weather2/view/WeatherScrollView;IIII)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getScreenCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f012d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    if-ne v0, p1, :cond_0

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v2, p3, p5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(II)V

    :cond_0
    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollX()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v2

    if-eq v2, p3, :cond_2

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/miui/weather2/view/WeatherScrollView;->scrollTo(II)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/ImageView;Lcom/miui/weather2/structures/BrandInfo;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/miui/weather2/structures/BrandInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/miui/weather2/view/WeatherScrollView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    invoke-virtual {p3}, Lcom/miui/weather2/structures/BrandInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    invoke-virtual {p3}, Lcom/miui/weather2/structures/BrandInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/au;

    invoke-direct {v0, p0, p3}, Lcom/miui/weather2/au;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/BrandInfo;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Z:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-ne v2, v0, :cond_3

    iput-boolean v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->Z:Z

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->T:Lcom/miui/weather2/tools/bd;

    invoke-virtual {v0, v4}, Lcom/miui/weather2/tools/bd;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->G:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ax;->b()V

    const/4 v0, -0x2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->K:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->k:Landroid/widget/ImageView;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->Z:Z

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-boolean v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->S:Z

    invoke-direct {p0, v2, v0, v4}, Lcom/miui/weather2/ActivityWeatherMain;->a(Landroid/widget/ListView;Lcom/miui/weather2/structures/CityData;Z)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->o()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aa:I

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->v:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->aa:I

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->T:Lcom/miui/weather2/tools/bd;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/bd;->a(Z)V

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/at;

    invoke-direct {v1, p0, v3}, Lcom/miui/weather2/at;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->G:Lcom/miui/weather2/tools/ax;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/ax;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityWeatherMain;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    return p1
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getFgUpdateTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/miui/weather2/tools/bi;->b(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityWeatherMain;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Z)V

    return-void
.end method

.method private b(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 4

    const/4 v1, 0x2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain$c;->b(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getFgUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "Wth2:ActivityWeatherMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkToAutoRefresh() isOverAutoRefreshTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->l()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->d()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/structures/CityData;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/miui/weather2/ActivityWeatherMain;->ak:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "normal_click"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logo_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/RefreshableView;->setCanPull(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/WeatherScreenView;->setCanScroll(Z)V

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityWeatherMain;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/miui/weather2/ActivityWeatherMain;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ah:I

    return v0
.end method

.method static synthetic c(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain;->O:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 1

    sget v0, Lcom/miui/weather2/bf;->f:I

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(II)V

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/ActivityWeatherMain;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->e(I)V

    return-void
.end method

.method private c(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getUpdateTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/structures/CityData;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/miui/weather2/ActivityWeatherMain;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    return v0
.end method

.method private d(I)Lcom/miui/weather2/view/WeatherScrollView;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    goto :goto_0
.end method

.method static synthetic d(Lcom/miui/weather2/ActivityWeatherMain;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->g(I)V

    return-void
.end method

.method static synthetic e(Lcom/miui/weather2/ActivityWeatherMain;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    return p1
.end method

.method static synthetic e(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e(I)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v6

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/weather2/model/o;->a(Landroid/content/Context;Lcom/miui/weather2/model/o$b;IILjava/lang/String;Lcom/miui/weather2/view/WeatherScrollView;Lcom/miui/weather2/structures/WeatherData;)V

    :cond_0
    return-void
.end method

.method public static f()Lcom/miui/weather2/tools/av;
    .locals 1

    sget-object v0, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/tools/av;

    invoke-direct {v0}, Lcom/miui/weather2/tools/av;-><init>()V

    sput-object v0, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    :cond_0
    sget-object v0, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(I)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScrollView;->a()V

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScrollView;->e()V

    sub-int v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScrollView;->h()V

    :cond_0
    sub-int v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/WeatherScrollView;->a(I)V

    iget-object v2, v2, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->w()V

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/WeatherScrollView;->setScrollViewListener(Lcom/miui/weather2/view/WeatherScrollView$c;)V

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->e(I)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->b(I)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/structures/WeatherData;)V

    if-eqz p1, :cond_4

    invoke-direct {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i()V

    :cond_4
    return-void
.end method

.method static synthetic f(Lcom/miui/weather2/ActivityWeatherMain;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->c(I)V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/weather2/ActivityWeatherMain;->af:Ljava/lang/String;

    return-object v0
.end method

.method private g(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->V:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    int-to-float v0, p1

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->U:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->T:Lcom/miui/weather2/tools/bd;

    invoke-virtual {v1, v3}, Lcom/miui/weather2/tools/bd;->a(Z)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :goto_1
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->T:Lcom/miui/weather2/tools/bd;

    invoke-virtual {v1, v2}, Lcom/miui/weather2/tools/bd;->a(Z)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->r()V

    return-void
.end method

.method static synthetic g(Lcom/miui/weather2/ActivityWeatherMain;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->f(I)V

    return-void
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/miui/weather2/ActivityWeatherMain;->N:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/weather2/ActivityWeatherMain;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Z:Z

    return v0
.end method

.method static synthetic i(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    return-object v0
.end method

.method private i()V
    .locals 3

    new-instance v0, Lcom/miui/weather2/receiver/a;

    invoke-direct {v0}, Lcom/miui/weather2/receiver/a;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->I:Lcom/miui/weather2/receiver/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->I:Lcom/miui/weather2/receiver/a;

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->G:Lcom/miui/weather2/tools/ax;

    invoke-virtual {v1, v2}, Lcom/miui/weather2/receiver/a;->a(Lcom/miui/weather2/tools/ax;)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->I:Lcom/miui/weather2/receiver/a;

    invoke-virtual {p0, v1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic j(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->w:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScrollView;->f()V

    iget-object v2, v1, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-virtual {v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/CircleIndicator;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->h:Lcom/miui/weather2/view/CircleIndicator;

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScrollView;->g()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->v:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/RefreshableView;->g()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/RefreshableView;->setIsRefreshing(Z)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->W:Z

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$h;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->W:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->A:Lcom/miui/weather2/model/ag;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag$g;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;

    :cond_2
    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/push/d;->a(Landroid/content/Context;I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lcom/miui/weather2/ActivityWeatherMain;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aa:I

    return v0
.end method

.method private m()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.weather.widget_weather_detail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "normal_open"

    const-string v3, "open_by"

    const-string v4, "widget"

    invoke-static {v2, v3, v4}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Wth2:ActivityWeatherMain"

    const-string v3, "getCityID() open weather by widget"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "com.miui.weather.widget_weather_detail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cityID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v2, "android.intent.action.MAIN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "normal_open"

    const-string v3, "open_by"

    const-string v4, "else"

    invoke-static {v2, v3, v4}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Wth2:ActivityWeatherMain"

    const-string v3, "getCityID() open weather by else"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "intent_key_city_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic n(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->K:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RefreshableView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->setRefreshListener(Lcom/miui/weather2/view/RefreshableView$a;)V

    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0f017b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->a(Landroid/widget/LinearLayout;)V

    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScreenView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/WeatherScreenView;->setOverScrollRatio(F)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/WeatherScreenView;->setOvershootTension(F)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->setOnPageChangedListener(Lcom/miui/weather2/view/WeatherScreenView$a;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->setConfirmHorizontalScrollRatio(F)V

    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/an;

    invoke-direct {v1, p0}, Lcom/miui/weather2/an;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/ao;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ao;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/CircleIndicator;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->h:Lcom/miui/weather2/view/CircleIndicator;

    const v0, 0x7f0f0048

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/weather2/ap;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ap;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0059

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->w:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/weather2/aq;

    invoke-direct {v1, p0}, Lcom/miui/weather2/aq;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->v:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/weather2/ar;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ar;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->K:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/weather2/as;

    invoke-direct {v1, p0}, Lcom/miui/weather2/as;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private o()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->u:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic o(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private p()V
    .locals 2

    new-instance v0, Lcom/miui/weather2/model/m;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    new-instance v0, Lcom/miui/weather2/model/ag;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->A:Lcom/miui/weather2/model/ag;

    new-instance v0, Lcom/miui/weather2/tools/w;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/tools/w;-><init>(Landroid/content/Context;Lcom/miui/weather2/tools/w$a;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    sget-object v1, Lcom/miui/weather2/g/a$j;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/w;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    sget-object v1, Lcom/miui/weather2/g/a$i;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/w;->a(Landroid/net/Uri;)V

    new-instance v0, Lcom/miui/weather2/tools/bd;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/bd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->T:Lcom/miui/weather2/tools/bd;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->E:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->f()Lcom/miui/weather2/tools/av;

    return-void
.end method

.method private q()V
    .locals 3

    const v2, 0x7f0a00c7

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->U:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->V:I

    return-void
.end method

.method static synthetic q(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->C()V

    return-void
.end method

.method private r()V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v9}, Lcom/miui/weather2/ActivityWeatherMain;->a(Z)V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Q:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScrollView;->b()V

    invoke-direct {p0, v8}, Lcom/miui/weather2/ActivityWeatherMain;->b(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v3}, Lcom/miui/weather2/view/WeatherScreenView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v4}, Lcom/miui/weather2/view/WeatherScreenView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v5}, Lcom/miui/weather2/view/WeatherScreenView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0245

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/miui/weather2/view/WeatherScreenView;->setPadding(IIII)V

    iput-boolean v9, p0, Lcom/miui/weather2/ActivityWeatherMain;->Q:Z

    iput-boolean v8, p0, Lcom/miui/weather2/ActivityWeatherMain;->R:Z

    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    if-nez v0, :cond_3

    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/ShareWaitCover;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    invoke-virtual {v0, v8}, Lcom/miui/weather2/view/ShareWaitCover;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/view/View;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->a(FLcom/miui/weather2/view/WeatherScrollView;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/miui/weather2/ActivityWeatherMain$e;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/ActivityWeatherMain$e;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    invoke-virtual {v2, v0}, Lcom/miui/weather2/ActivityWeatherMain$e;->a(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/miui/weather2/ActivityWeatherMain$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->y()V

    goto :goto_0
.end method

.method static synthetic r(Lcom/miui/weather2/ActivityWeatherMain;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->R:Z

    return v0
.end method

.method static synthetic s(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->y:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->y:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$f;Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private t()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->u()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->A:Lcom/miui/weather2/model/ag;

    new-instance v2, Lcom/miui/weather2/ActivityWeatherMain$f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/weather2/ActivityWeatherMain$f;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Lcom/miui/weather2/model/ag$d;Z)V

    return-void
.end method

.method static synthetic t(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->z()V

    return-void
.end method

.method static synthetic u(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/ShareWaitCover;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Landroid/view/View;
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004a

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    return-object v0
.end method

.method static synthetic v(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/structures/AdvertismentData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->J:Lcom/miui/weather2/structures/AdvertismentData;

    return-object v0
.end method

.method static synthetic w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    return-object v0
.end method

.method private w()V
    .locals 4

    sget-object v0, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/av;->a()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScrollView;->getCurrentPageBackground()Lcom/miui/weather2/b/h;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScrollView;->getCurrentPageBackground()Lcom/miui/weather2/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/weather2/tools/av;->a(Lcom/miui/weather2/tools/av$a;)V

    :cond_0
    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScrollView;->getCurrentPageSkyBackground()Lcom/miui/weather2/b/l;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScrollView;->getCurrentPageSkyBackground()Lcom/miui/weather2/b/l;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/weather2/tools/av;->a(Lcom/miui/weather2/tools/av$a;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090041

    new-instance v2, Lcom/miui/weather2/am;

    invoke-direct {v2, p0}, Lcom/miui/weather2/am;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090040

    new-instance v2, Lcom/miui/weather2/ak;

    invoke-direct {v2, p0}, Lcom/miui/weather2/ak;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic x(Lcom/miui/weather2/ActivityWeatherMain;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->W:Z

    return v0
.end method

.method static synthetic y(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->x:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private y()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScreenView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v3}, Lcom/miui/weather2/view/WeatherScreenView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/weather2/view/WeatherScreenView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->Q:Z

    return-void
.end method

.method static synthetic z(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/ActivityWeatherMain$c;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    return-object v0
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/ShareWaitCover;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->R:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 9

    const/16 v3, 0xa0

    const/16 v8, 0x89

    const/4 v5, 0x1

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->setContentView(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "BottomBar_display"

    const-string v2, "stay"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ab:Ljava/lang/String;

    const-string v2, "stay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "weather_BottomBar_bottombar_show"

    invoke-static {v3, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "normal_view"

    const-string v2, "bottom_bar"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->x()V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/ActivityWeatherMain$a;

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->p()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->n()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->q()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->i()V

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->O:Ljava/lang/String;

    :goto_1
    iput-boolean v5, p0, Lcom/miui/weather2/ActivityWeatherMain;->ai:Z

    invoke-static {p0}, Lcom/miui/weather2/tools/af;->a(Landroid/content/Context;)Lcom/miui/weather2/tools/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/af;->a()V

    const-string v0, "normal_open"

    const-string v2, "open_app_version"

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->n(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "normal_open"

    const-string v2, "open_miui_version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/weather2/tools/bi;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/miui/weather2/tools/bi;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "normal_open"

    const-string v2, "open_net_state"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "normal_open"

    const-string v2, "open_time"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weather_info_style_abtest_new_dau"

    invoke-static {v8, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "weather_info_style_abtest_new"

    const-string v2, "original"

    invoke-static {v8, v0, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ag:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ag:Ljava/lang/String;

    const-string v2, "count"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "weather_info_style_abtest"

    const-string v2, "dau"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->E:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->E:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ad:I

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ae:Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->X:I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/miui/weather2/tools/at;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->b:Z

    new-instance v0, Lcom/miui/weather2/ActivityWeatherMain$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miui/weather2/ActivityWeatherMain$b;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    sget-object v2, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/miui/weather2/ActivityWeatherMain$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->O:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getUpdateTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/structures/WeatherData;)V

    invoke-direct {p0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->c(I)V

    goto :goto_0
.end method

.method b()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    sget-object v2, Lcom/miui/weather2/g/a$d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/tools/w;->a(Landroid/net/Uri;)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0900a7

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->s()V

    :goto_0
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->o(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->E:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain;->E:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->B()V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ae:Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ad:I

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_3
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->g:Lcom/miui/weather2/view/WeatherScreenView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->c(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(I)V

    sget-object v3, Lcom/miui/weather2/ActivityWeatherMain;->N:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_8
    :goto_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    if-le v0, v4, :cond_8

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/WeatherData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/structures/WeatherData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ad:I

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->ae:Z

    :cond_b
    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->k()V

    :cond_c
    return-void
.end method

.method c()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Z)V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->y()V

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->c()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    invoke-virtual {v0}, Lcom/miui/weather2/view/ShareWaitCover;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->z()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->E:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/miui/weather2/ActivityWeatherMain;->F:Lcom/miui/weather2/tools/av;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->i()V

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->j()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->j()V

    return-void
.end method

.method d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    sget-object v1, Lcom/miui/weather2/g/a$d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/w;->b(Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->l:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->f()V

    :cond_1
    return-void
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/w;->a()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->q:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->D:Lcom/miui/weather2/tools/w;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/w;->a()V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain$b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain$b;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->aj:Lcom/miui/weather2/ActivityWeatherMain$b;

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->I:Lcom/miui/weather2/receiver/a;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->i()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Q:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->y()V

    iget v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->M:I

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->r:Lcom/miui/weather2/view/ShareWaitCover;

    invoke-virtual {v0}, Lcom/miui/weather2/view/ShareWaitCover;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->z()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->Z:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/miui/weather2/be;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/aj;

    invoke-direct {v1, p0}, Lcom/miui/weather2/aj;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityWeatherMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->H:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->e()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/weather2/model/m;

    invoke-direct {v1, p0}, Lcom/miui/weather2/model/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    :cond_0
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->z:Lcom/miui/weather2/model/m;

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain;->B:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-virtual {v1, v2}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$h;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->O:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->s()V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onPause()V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->c()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->b:Z

    invoke-static {p2, p3}, Lcom/miui/weather2/tools/at;->a([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    goto :goto_0

    :pswitch_1
    invoke-static {p3}, Lcom/miui/weather2/tools/at;->a([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->r()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->b()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->H:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->L:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/miui/weather2/ActivityWeatherMain$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/ActivityWeatherMain$a;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/ActivityWeatherMain$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain;->d()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain;->H:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain;->L:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
