.class public Lcom/miui/weather2/view/WeatherScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/WeatherScrollView$a;,
        Lcom/miui/weather2/view/WeatherScrollView$b;,
        Lcom/miui/weather2/view/WeatherScrollView$c;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Landroid/view/LayoutInflater;

.field private D:Ljava/lang/String;

.field private E:Lcom/miui/weather2/model/o;

.field private F:I

.field private G:Z

.field private H:I

.field private I:Z

.field private J:F

.field public a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

.field public b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

.field public c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

.field public d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

.field public e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

.field public f:Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;

.field public g:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

.field public h:Lcom/miui/weather2/view/onOnePage/InternationalDetails;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/view/ViewGroup;

.field public n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

.field o:I

.field p:I

.field private q:Lcom/miui/weather2/view/WeatherScrollView$c;

.field private r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

.field private s:Landroid/content/Context;

.field private t:Z

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/tools/bs;",
            ">;"
        }
    .end annotation
.end field

.field private x:[I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/WeatherScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/WeatherScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->q:Lcom/miui/weather2/view/WeatherScrollView$c;

    iput-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->t:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->w:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    iput-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->z:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->B:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->I:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->J:F

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const/16 v0, 0x89

    const-string v1, "weather_info_style_abtest_new"

    const-string v2, "original"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->E:Lcom/miui/weather2/model/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/o;

    invoke-direct {v0}, Lcom/miui/weather2/model/o;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->E:Lcom/miui/weather2/model/o;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/WeatherScrollView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/WeatherScrollView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    aget v0, v0, v3

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    aget v0, v0, v3

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->y:I

    if-gt v0, v2, :cond_1

    instance-of v0, p1, Lcom/miui/weather2/view/WeatherScrollView$b;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView$b;

    invoke-interface {v0}, Lcom/miui/weather2/view/WeatherScrollView$b;->getReportRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    aget v0, v0, v3

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    aget v0, v0, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->y:I

    if-le v0, v1, :cond_4

    :cond_2
    instance-of v0, p1, Lcom/miui/weather2/view/WeatherScrollView$b;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView$b;

    invoke-interface {v0}, Lcom/miui/weather2/view/WeatherScrollView$b;->getReportRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    instance-of v0, p1, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getAdapter()Landroid/support/a/a/r$a;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/l;

    invoke-virtual {v0, v4}, Lcom/miui/weather2/model/l;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->y:I

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->x:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-gez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/view/WeatherScrollView$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView$b;

    invoke-interface {v0}, Lcom/miui/weather2/view/WeatherScrollView$b;->getReportRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;)Z
    .locals 10

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v9

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->B:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    const-string v1, "original"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    :goto_1
    const v0, 0x7f0f00ee

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00ef

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f00f1

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CornerMarkBean;->getCornerData()Lcom/miui/weather2/structures/CornerDataBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CornerMarkBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tip"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerDataBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerDataBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/weather2/tools/bp;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerDataBean;->getText()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v7, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/tools/bp;-><init>(Landroid/view/View;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_3
    const v0, 0x7f0f00dc

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v2

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_3
    const v0, 0x7f0f00df

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/miui/weather2/structures/LinkBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/miui/weather2/tools/m;

    iget-object v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->A:Ljava/lang/String;

    iget v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v7, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/tools/m;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;Ljava/lang/String;IZI)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    :goto_5
    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v8}, Lcom/miui/weather2/view/WeatherScrollView;->b(Landroid/view/View;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/miui/weather2/tools/m;

    iget v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/tools/m;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const v9, 0x7f0f00e1

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    const-string v0, "7"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Wth2:WeatherScrollView"

    const-string v1, "generateCardItem() invalid parameters"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Wth2:WeatherScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateCardItem() ad closed today:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "114"

    invoke-static {p5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "8"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->B:Z

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/af;->a(Landroid/content/Context;)Lcom/miui/weather2/tools/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/af;->b()Lcom/miui/weather2/tools/af$a;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/weather2/tools/af$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/miui/weather2/tools/af$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/miui/weather2/tools/af$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    const-string v1, "list"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_2
    const v0, 0x7f0f00dc

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0f00e5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Lcom/miui/weather2/tools/c;

    invoke-direct {v3, p1, v2, p3}, Lcom/miui/weather2/tools/c;-><init>(Landroid/view/View;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const-string v3, "7"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v3

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_5
    :goto_3
    const v0, 0x7f0f00dd

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "original"

    iget-object v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    const-string v3, "7"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v0, 0x7f0f00df

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "7"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const v0, 0x7f0f00de

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AdParameters;->getWeatherExpId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "7"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "3.24"

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    const v0, 0x7f0f00e3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0f00e2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f00e0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_13

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v3

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_7
    const-string v0, "7"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "3.24"

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f0f00e7

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v5

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    const-string v1, "scroll"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f03003d

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getImgUrls()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getImgUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v6

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getImgUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    goto/16 :goto_3

    :cond_a
    const-string v3, "114"

    invoke-static {p5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "8"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v3

    iget-object v6, v4, Lcom/miui/weather2/tools/af$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v6

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    goto/16 :goto_3

    :cond_c
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_e
    const-string v3, "8"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "114"

    invoke-static {p5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v4, Lcom/miui/weather2/tools/af$a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v4, Lcom/miui/weather2/tools/af$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_10
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_14
    const v2, 0x7f0f007b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const v2, 0x7f0f00e6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    new-instance v2, Lcom/miui/weather2/tools/f;

    invoke-direct {v2, v0, p3}, Lcom/miui/weather2/tools/f;-><init>(Landroid/widget/TextView;Lcom/miui/weather2/structures/InfoDataBean;)V

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->w:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_16
    const-string v0, "6"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "3"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_17
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/miui/weather2/structures/LinkBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/miui/weather2/tools/m;

    iget-object v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->A:Ljava/lang/String;

    iget v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v7, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/tools/m;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;Ljava/lang/String;IZI)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    :cond_18
    :goto_8
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->b(Landroid/view/View;)V

    move v0, v8

    goto/16 :goto_0

    :cond_19
    new-instance v0, Lcom/miui/weather2/tools/m;

    iget v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/tools/m;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1a
    const-string v0, "7"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/miui/weather2/tools/AdViewTrigger;

    iget v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/tools/AdViewTrigger;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1b
    const-string v0, "8"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v4, Lcom/miui/weather2/tools/af$a;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/miui/weather2/structures/InfoDataBean;->setMiFamilyUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/weather2/tools/ai;

    invoke-direct {v0, v1, p3}, Lcom/miui/weather2/tools/ai;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1c
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;I)Z
    .locals 10

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "7"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-nez p5, :cond_3

    const v0, 0x7f0f0103

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f0102

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0104

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object v7, v2

    move-object v2, v0

    :goto_1
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "3.9"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "3.10"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "112"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "113"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getImgUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getImgUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v3

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getImgUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.9"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.10"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    new-instance v0, Lcom/miui/weather2/tools/AdViewTrigger;

    iget v3, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/tools/AdViewTrigger;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-direct {p0, p2}, Lcom/miui/weather2/view/WeatherScrollView;->b(Landroid/view/View;)V

    move v0, v8

    goto/16 :goto_0

    :cond_3
    if-ne v8, p5, :cond_4

    const v0, 0x7f0f0107

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f0106

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0108

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object v7, v2

    move-object v2, v0

    goto/16 :goto_1

    :cond_4
    move v0, v6

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    move v0, v6

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/miui/weather2/tools/m;

    iget v4, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iget-boolean v5, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iget v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/tools/m;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    move v0, v6

    goto/16 :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;)Z
    .locals 35

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/WeatherScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    const-string v5, "original"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v5, 0x7f030040

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object/from16 v23, v4

    :goto_0
    const v4, 0x7f0f00dc

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0f00f2

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v5, 0x7f0f00f3

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v5, 0x7f0f00f6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v5, 0x7f0f00f4

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v5, 0x7f0f00f5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v5, 0x7f0f00f7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v5, 0x7f0f00f9

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    const v5, 0x7f0f00fd

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const v5, 0x7f0f00fb

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v5, 0x7f0f00ff

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v5, 0x7f0f00fa

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v5, 0x7f0f00fe

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v24, 0x7f0b0059

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrBackgroundImg()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v24

    const v25, 0x7f020123

    invoke-virtual/range {v24 .. v25}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/bumptech/glide/c;->c()Lcom/bumptech/glide/c;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    const v4, 0x7f0f00df

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrTitle()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeCount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeCount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v5, 0x7f030041

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object/from16 v23, v4

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeCount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeCount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    add-long v28, v24, v26

    const-wide/16 v30, 0x0

    cmp-long v4, v28, v30

    if-nez v4, :cond_5

    const/16 v4, 0x32

    :goto_2
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080006

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v33, v34

    invoke-virtual/range {v30 .. v33}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v28, 0x7f090107

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v28, 0x7f0900ab

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    rsub-int/lit8 v31, v4, 0x64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, -0x2

    const/16 v30, -0x2

    int-to-float v4, v4

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteOption()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeBtnImgAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeBtnImgAfter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    new-instance v5, Lcom/miui/weather2/view/at;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Lcom/miui/weather2/view/at;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeBtnImgAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeBtnImgAfter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    new-instance v5, Lcom/miui/weather2/view/au;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/miui/weather2/view/au;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeIconAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeIconAfter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeIconAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeIconAfter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080008

    move-wide/from16 v0, v24

    long-to-int v6, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    move-wide/from16 v0, v26

    long-to-int v6, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteOption()Ljava/lang/String;

    move-result-object v4

    const-string v5, "agree"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_7
    new-instance v4, Lcom/miui/weather2/view/ax;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v22}, Lcom/miui/weather2/view/ax;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Lcom/miui/weather2/structures/InfoDataBean;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/widget/TextView;IILandroid/widget/TextView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/miui/weather2/tools/m;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    move-object/from16 v5, v23

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/miui/weather2/tools/m;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->b(Landroid/view/View;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_8
    const v4, 0x7f0200bc

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_9
    const v4, 0x7f0200b9

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteOption()Ljava/lang/String;

    move-result-object v4

    const-string v5, "disagree"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeBtnImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeBtnImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    new-instance v5, Lcom/miui/weather2/view/av;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Lcom/miui/weather2/view/av;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeBtnImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeBtnImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    new-instance v5, Lcom/miui/weather2/view/aw;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/miui/weather2/view/aw;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_9

    :cond_e
    const v4, 0x7f0200bd

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    :cond_f
    const v4, 0x7f0200ba

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/miui/weather2/view/WeatherScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->t:Z

    return p1
.end method

.method private a(Lcom/miui/weather2/view/onOnePage/a;Lcom/miui/weather2/structures/AdvertismentData;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/weather2/view/onOnePage/a;->setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/miui/weather2/view/WeatherScrollView$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/view/WeatherScrollView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/view/WeatherScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherScrollView;->m()V

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/view/WeatherScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/weather2/view/WeatherScrollView;)Lcom/miui/weather2/model/o;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->E:Lcom/miui/weather2/model/o;

    return-object v0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/weather2/tools/bs;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/tools/m;

    if-eqz v0, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->q:Lcom/miui/weather2/view/WeatherScrollView$c;

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e()V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(I)V

    return-void
.end method

.method public a(IZI)V
    .locals 1

    iput p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->F:I

    iput-boolean p2, p0, Lcom/miui/weather2/view/WeatherScrollView;->G:Z

    iput p3, p0, Lcom/miui/weather2/view/WeatherScrollView;->H:I

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->a(IZI)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a(IZI)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(IZI)V

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-direct {p0, v0, p1}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/onOnePage/a;Lcom/miui/weather2/structures/AdvertismentData;)Z

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0, v0, p2}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/onOnePage/a;Lcom/miui/weather2/structures/AdvertismentData;)Z

    return-void
.end method

.method protected a(Lcom/miui/weather2/structures/InfoCardBean;)V
    .locals 20

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/view/WeatherScrollView;->D:Ljava/lang/String;

    const-string v2, "original"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v2, 0x7f030039

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_1
    const v1, 0x7f0f00d8

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const v1, 0x7f0f00d5

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getIsVisible()Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v1, 0x7f0f00d9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v1, 0x7f0f00da

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v1, 0x7f0f00db

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerMarkBean;->getCornerData()Lcom/miui/weather2/structures/CornerDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerDataBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerMarkBean;->getCornerData()Lcom/miui/weather2/structures/CornerDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CornerDataBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v1, 0x7f0f0100

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup;

    const v1, 0x7f0f0101

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v1, 0x7f0f0105

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v1, 0x7f0f00d7

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/4 v6, 0x0

    const v1, 0x7f0f00d6

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    move v13, v1

    move v7, v4

    move v14, v6

    move v4, v5

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/miui/weather2/structures/InfoListNodeBean;

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v5, "12"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;)Z

    move-result v4

    move v5, v4

    move v4, v7

    :goto_6
    if-eqz v5, :cond_17

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    add-int/lit8 v6, v14, 0x1

    :goto_8
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    move v7, v4

    move v14, v6

    move v4, v5

    goto :goto_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/view/WeatherScrollView;->C:Landroid/view/LayoutInflater;

    const v2, 0x7f030039

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/miui/weather2/structures/InfoCardBean;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "2"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v5, "11"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v4}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;)Z

    move-result v4

    move v5, v4

    move v4, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "6"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v5, "11"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v4

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v5, v4

    move v4, v7

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "7"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdParameters;->getWeatherExpId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "6"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/weather2/view/WeatherScrollView;->t:Z

    if-eqz v1, :cond_c

    const/4 v4, 0x0

    move v5, v4

    move v4, v7

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3.21"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3.24"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v4

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v9, v7

    :cond_e
    :goto_9
    new-instance v1, Lcom/miui/weather2/tools/c;

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v5

    invoke-direct {v1, v2, v10, v5}, Lcom/miui/weather2/tools/c;-><init>(Landroid/view/View;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move v5, v4

    move v4, v9

    goto/16 :goto_6

    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v9, v7, 0x1

    if-nez v9, :cond_12

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v7

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object v5, v11

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    if-lez v14, :cond_10

    const/4 v4, 0x1

    :goto_a
    if-eqz v4, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_12
    const/4 v1, 0x1

    if-ne v9, v1, :cond_e

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v7

    invoke-virtual {v12}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object v5, v11

    move-object/from16 v6, v18

    invoke-direct/range {v4 .. v9}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    if-lez v14, :cond_13

    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x0

    goto :goto_b

    :cond_14
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_15
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_16
    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_17
    move v6, v14

    goto/16 :goto_8

    :cond_18
    move v5, v4

    move v4, v7

    goto/16 :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/weather2/tools/ab;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/ag;

    invoke-direct {v0, p3}, Lcom/miui/weather2/model/ag;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/weather2/view/WeatherScrollView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/weather2/view/WeatherScrollView$a;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Lcom/miui/weather2/view/at;)V

    invoke-virtual {v0, p2, p1, p4, v1}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/weather2/model/ag$a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 24

    const-string v5, "Wth2:WeatherScrollView"

    const-string v6, "requestCommercialInfo()"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/miui/weather2/f/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v5

    invoke-static {}, Lcom/miui/weather2/tools/bi;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1020"

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/miui/weather2/tools/bi;->d()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/miui/weather2/f/a;->e()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/miui/weather2/f/a;->f()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/miui/weather2/f/a;->g()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p5 .. p5}, Lcom/miui/weather2/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    new-instance v23, Lcom/miui/weather2/view/bb;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p6

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/weather2/view/bb;-><init>(Lcom/miui/weather2/view/WeatherScrollView;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v10, p1

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    invoke-virtual/range {v5 .. v23}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->o:I

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->p:I

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->o:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    iget v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->p:I

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/miui/weather2/view/WeatherScrollView$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/weather2/view/WeatherScrollView$b;

    invoke-interface {v1}, Lcom/miui/weather2/view/WeatherScrollView$b;->getReportRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d()V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->c()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e()V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->d()V

    return-void
.end method

.method public getCurrentPageBackground()Lcom/miui/weather2/b/h;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getCurrentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getCurrentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/h;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPageSkyBackground()Lcom/miui/weather2/b/l;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getCurrentSkyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/b/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getCurrentSkyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/l;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d()V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->g()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->b()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/bs;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/bs;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->h()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->y:I

    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    const v0, 0x7f0f0133

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    new-instance v1, Lcom/miui/weather2/tools/ar;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    const-string v3, "minute_rain_forecast"

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/tools/ar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0f018d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    new-instance v1, Lcom/miui/weather2/tools/ar;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    const-string v3, "alert_carousel"

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/tools/ar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    new-instance v1, Lcom/miui/weather2/tools/ar;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    const-string v3, "hourly_forecast"

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/tools/ar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/DailyForecast;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    new-instance v1, Lcom/miui/weather2/tools/ar;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    const-string v3, "daily_forecast"

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/tools/ar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/DailyForecast;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->f:Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f012e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0f012f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->g:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    :cond_0
    invoke-static {}, Lcom/miui/weather2/tools/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0f0131

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->h:Lcom/miui/weather2/view/onOnePage/InternationalDetails;

    :cond_1
    const v0, 0x7f0f0127

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->k:Landroid/widget/ImageView;

    const v0, 0x7f0f0128

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->l:Landroid/widget/ImageView;

    const v0, 0x7f0f0126

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->i:Landroid/view/View;

    new-instance v1, Lcom/miui/weather2/tools/ar;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->i:Landroid/view/View;

    const-string v3, "logo"

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/tools/ar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->j:Landroid/view/View;

    const v0, 0x7f0f007e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->r:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-instance v1, Lcom/miui/weather2/tools/ar;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const-string v3, "multi_media_backgroud"

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/tools/ar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0, v4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->e:Lcom/miui/weather2/view/onOnePage/DailyForecast;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->d:Lcom/miui/weather2/view/onOnePage/HourlyForecast;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->i:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->c:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->u:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->b:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mMultiMediaBackground"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mAdvertisementBackground"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mAlertView"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mAqiWithIcon"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mAqiWithoutIcon"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mAqiDefault"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->q:Lcom/miui/weather2/view/WeatherScrollView$c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->q:Lcom/miui/weather2/view/WeatherScrollView$c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/weather2/view/WeatherScrollView$c;->a(Lcom/miui/weather2/view/WeatherScrollView;IIII)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->d()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->z:Z

    if-nez v1, :cond_0

    const-string v1, "scroll"

    const-string v2, "scrollToBottom"

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/miui/weather2/view/WeatherScrollView;->z:Z

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->z:Z

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/miui/weather2/view/WeatherScrollView;->z:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0, v0, p0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v2, "mMultiMediaBackground"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v2, "mMultiMediaBackground"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ad_exposure"

    const-string v2, "multi_video"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getImageAdvertisment()Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v3, "mAdvertisementBackground"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v3, "mAdvertisementBackground"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->a:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ad_exposure"

    const-string v3, "advertisement_icon_exposure"

    invoke-static {v0, v3}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mMultiMediaBackground"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->v:Ljava/util/HashMap;

    const-string v1, "mAdvertisementBackground"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->f:Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;

    invoke-direct {p0, v0, p0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->f:Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/RealTimeDetailCard;->a()V

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    iput-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->I:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->I:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/weather2/view/WeatherScrollView;->I:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCameraDistance(F)V
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->J:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->J:F

    iget v0, p0, Lcom/miui/weather2/view/WeatherScrollView;->J:F

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/miui/weather2/view/WeatherScrollView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherScrollView;->q:Lcom/miui/weather2/view/WeatherScrollView$c;

    return-void
.end method
