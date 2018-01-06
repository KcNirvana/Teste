.class public Lcom/miui/weather2/model/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/g$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static l:F

.field private static m:F


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/miui/weather2/ActivitySetCity;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcom/miui/weather2/view/WeatherDynamicListView;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/weather2/model/g;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/g;->e:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/miui/weather2/model/g;->f:Z

    iput-boolean v1, p0, Lcom/miui/weather2/model/g;->g:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/weather2/model/g;->k:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/weather2/model/g;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/weather2/model/g;->h:Lcom/miui/weather2/view/WeatherDynamicListView;

    iput-object p1, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/miui/weather2/model/g;->l:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/miui/weather2/model/g;->m:F

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/g;)Lcom/miui/weather2/view/WeatherDynamicListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/g;->h:Lcom/miui/weather2/view/WeatherDynamicListView;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/model/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/g;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/weather2/model/g;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/g;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method private b(II)Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/miui/weather2/model/g;->a:I

    add-int/lit8 v1, v1, 0x0

    if-ne v1, p1, :cond_0

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/miui/weather2/model/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/miui/weather2/structures/CityData;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/g;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/miui/weather2/model/g;->k:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v1, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/weather2/model/g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/g;->c:Lcom/miui/weather2/ActivitySetCity;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/weather2/model/g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/g;->g:Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/weather2/model/g;->f:Z

    iget-boolean v0, p0, Lcom/miui/weather2/model/g;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/model/g;->k:I

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/model/g;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/weather2/model/g;->k:I

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/model/g;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/model/g;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/model/g;->g:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/g;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/g;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/miui/weather2/model/g;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/model/g;->k:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/g;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/g;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/miui/weather2/model/g;->k:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget v2, Lcom/miui/weather2/model/g;->a:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/miui/weather2/model/g;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/weather2/model/g;->k:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/g;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/g;->getItemViewType(I)I

    move-result v3

    if-nez p2, :cond_6

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v10, v1

    :goto_1
    const/4 v1, 0x2

    if-ne v1, v3, :cond_5

    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    sget v1, Lcom/miui/weather2/model/g;->a:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/miui/weather2/model/g;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getLocateFlag()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/miui/weather2/model/g;->b(II)Z

    move-result v4

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getCityManagementDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getWholeName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getBelongings()Ljava/lang/String;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_8

    array-length v2, v6

    if-lez v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_3
    const-string v3, ","

    const-string v6, "\uff0c"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v7, 0x0

    :goto_4
    if-nez v2, :cond_b

    const/4 v6, 0x0

    :goto_5
    if-nez v2, :cond_c

    const/4 v5, 0x0

    :goto_6
    if-nez v2, :cond_d

    const/4 v3, 0x0

    :goto_7
    if-nez v2, :cond_e

    const/4 v2, 0x0

    :goto_8
    move v13, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v1

    move-object v1, v2

    move v2, v13

    :goto_9
    if-eqz v2, :cond_10

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->k:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-boolean v11, p0, Lcom/miui/weather2/model/g;->f:Z

    if-eqz v11, :cond_12

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->a:Landroid/widget/ImageButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->d:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->i:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->j:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_11

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->f:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_b
    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->b:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v10, Lcom/miui/weather2/model/g$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_13

    iget-object v7, v10, Lcom/miui/weather2/model/g$a;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/TodayData;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v5

    invoke-static {v5}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconNightByWeatherType(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_d
    const-string v1, ""

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/miui/weather2/structures/AQIData;->getTitleWithPrefixAndAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ""

    :goto_e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    const v5, 0x7f090075

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/miui/weather2/structures/RealTimeData;->getHumidity()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, ""

    :goto_f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/miui/weather2/structures/RealTimeData;->getWindDirection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v4, v5, v7}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/miui/weather2/structures/WeatherData;->getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v4, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x29

    if-le v4, v5, :cond_19

    iget-object v4, v10, Lcom/miui/weather2/model/g$a;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    sget v6, Lcom/miui/weather2/model/g;->m:F

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_10
    iget-object v4, v10, Lcom/miui/weather2/model/g$a;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v10, Lcom/miui/weather2/model/g$a;->h:Landroid/widget/TextView;

    if-nez v3, :cond_1a

    iget-object v1, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    :goto_11
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->f:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/miui/weather2/model/h;

    invoke-direct {v3, p0, p1}, Lcom/miui/weather2/model/h;-><init>(Lcom/miui/weather2/model/g;I)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->a:Landroid/widget/ImageButton;

    new-instance v3, Lcom/miui/weather2/model/i;

    invoke-direct {v3, p0, v2, v9}, Lcom/miui/weather2/model/i;-><init>(Lcom/miui/weather2/model/g;ZLjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object p2

    :pswitch_0
    new-instance p2, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/weather2/model/g;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030046

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/miui/weather2/model/g$a;

    invoke-direct {v2, p0}, Lcom/miui/weather2/model/g$a;-><init>(Lcom/miui/weather2/model/g;)V

    const v1, 0x7f0f0112

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->a:Landroid/widget/ImageButton;

    const v1, 0x7f0f0113

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0f0115

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0f0117

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->d:Landroid/widget/TextView;

    const v1, 0x7f0f0116

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    const v1, 0x7f0f0118

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->f:Landroid/widget/FrameLayout;

    const v1, 0x7f0f011b

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->g:Landroid/widget/TextView;

    const v1, 0x7f0f011c

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->h:Landroid/widget/TextView;

    const v1, 0x7f0f0119

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->i:Landroid/view/View;

    const v1, 0x7f0f011a

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->j:Landroid/view/View;

    const v1, 0x7f0f0114

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/miui/weather2/model/g$a;->k:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne v2, v3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/g$a;

    move-object v10, v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getCityManagementDisplayName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    array-length v3, v6

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v7, ""

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_9
    array-length v3, v6

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    const/4 v3, 0x2

    aget-object v3, v6, v3

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v7

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v6

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v5

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v3

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v2}, Lcom/miui/weather2/structures/WeatherData;->getTodayData()Lcom/miui/weather2/structures/TodayData;

    move-result-object v2

    goto/16 :goto_8

    :cond_f
    iget-object v9, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/weather2/model/g;->j:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v13, v1

    move-object v1, v2

    move v2, v13

    goto/16 :goto_9

    :cond_10
    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->k:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_11
    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->f:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_b

    :cond_12
    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->a:Landroid/widget/ImageButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->d:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->i:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->j:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v10, Lcom/miui/weather2/model/g$a;->f:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_b

    :cond_13
    iget-object v7, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    iget-object v8, v10, Lcom/miui/weather2/model/g$a;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/miui/weather2/structures/RealTimeData;->getTemperature()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/miui/weather2/bf;->b:Landroid/graphics/Typeface;

    invoke-static {v7, v8, v11, v12}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto/16 :goto_c

    :cond_14
    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v5

    invoke-static {v5}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconByWeatherType(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :cond_15
    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/TodayData;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherTypeNum()I

    move-result v5

    invoke-static {v5}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconNightByWeatherType(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :cond_16
    iget-object v1, v10, Lcom/miui/weather2/model/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherTypeNum()I

    move-result v5

    invoke-static {v5}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconByWeatherType(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :cond_17
    const-string v1, " | "

    goto/16 :goto_e

    :cond_18
    const-string v1, " | "

    goto/16 :goto_f

    :cond_19
    iget-object v4, v10, Lcom/miui/weather2/model/g$a;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    sget v6, Lcom/miui/weather2/model/g;->l:F

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_10

    :cond_1a
    iget-object v1, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/weather2/model/g;->i:Landroid/content/Context;

    invoke-virtual {v3, v1, v5, v6}, Lcom/miui/weather2/structures/ForecastData;->getCelsiusAndFahrenheitDescConnection(ZILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_1b
    move-object v2, v3

    goto/16 :goto_3

    :cond_1c
    move-object v10, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
