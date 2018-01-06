.class public Lcom/miui/weather2/view/AqiQualityFourthPart;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/weather2/model/j$a;
.implements Lcom/miui/weather2/tools/s$a;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:F

.field private f:Lcom/amap/api/maps2d/MapView;

.field private g:Lcom/miui/weather2/structures/CityData;

.field private h:Lcom/miui/weather2/tools/n;

.field private i:Lcom/miui/weather2/model/j;

.field private j:Lcom/miui/weather2/structures/AqiQualityStationColony;

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/AqiQualityFourthPart;)F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->e:F

    return v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/AqiQualityFourthPart;F)F
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->e:F

    return p1
.end method

.method private a(Lcom/miui/weather2/structures/CityData;DD)Lcom/amap/api/maps2d/a/h;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLatLng()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/view/AqiQualityFourthPart;Lcom/miui/weather2/structures/CityData;DD)Lcom/amap/api/maps2d/a/h;
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Lcom/miui/weather2/structures/CityData;DD)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/AqiQualityFourthPart;Lcom/miui/weather2/model/j;)Lcom/miui/weather2/model/j;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->i:Lcom/miui/weather2/model/j;

    return-object p1
.end method

.method private a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0f0013

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0014

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0015

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AqiQualityStation;->getPositionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/weather2/structures/AqiQualityStation;->getAqiDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->g:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getLatLng()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/weather2/structures/AqiQualityStation;->getStationDesc(Lcom/amap/api/maps2d/a/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/weather2/structures/AqiQualityStation;->getAqiDescBackground(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/miui/weather2/view/c;

    invoke-direct {v0, p0, p2}, Lcom/miui/weather2/view/c;-><init>(Lcom/miui/weather2/view/AqiQualityFourthPart;Lcom/miui/weather2/structures/AqiQualityStation;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/structures/AqiQualityStationColony;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    return-object v0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0f000e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/MapView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->f:Lcom/amap/api/maps2d/MapView;

    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->l:Landroid/view/View;

    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->m:Landroid/view/View;

    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0019

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/tools/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/model/j;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->i:Lcom/miui/weather2/model/j;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c()V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-direct {p0, v2, v0, v3}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-direct {p0, v2, v0, v3}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-direct {p0, v2, v0, v3}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/miui/weather2/view/AqiQualityFourthPart;)Lcom/miui/weather2/structures/CityData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->g:Lcom/miui/weather2/structures/CityData;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->c()V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStation;->isAqiExcellentStation()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getMinDistanceStation()Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getMinDistanceStation()Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/miui/weather2/structures/AqiQualityStation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    const-string v2, "suggest_nearest"

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    const-string v3, "suggest_nearest"

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v1, v4}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->l:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->o:Landroid/widget/RelativeLayout;

    const-string v2, "suggest_best"

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->o:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0, v4}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    const-string v2, "suggest_best"

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0, v4}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    const-string v2, "suggest_nearest"

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/weather2/view/AqiQualityFourthPart;->a(Landroid/widget/RelativeLayout;Lcom/miui/weather2/structures/AqiQualityStation;Z)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/n;->j()V

    :cond_0
    return-void
.end method

.method public a(DDF)V
    .locals 9

    new-instance v1, Lcom/miui/weather2/view/b;

    move-object v2, p0

    move v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/weather2/view/b;-><init>(Lcom/miui/weather2/view/AqiQualityFourthPart;FDD)V

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/AqiQualityFourthPart;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/AqiQualityStationColony;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->g:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/n;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->k:Z

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->j:Lcom/miui/weather2/structures/AqiQualityStationColony;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->g:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/weather2/tools/n;->a(Lcom/miui/weather2/structures/AqiQualityStationColony;Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->g:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->e()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->d()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/n;->a(Z)V

    const-string v0, "aqi_detail"

    const-string v1, "zoom_out"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/n;->a(Z)V

    const-string v0, "aqi_detail"

    const-string v1, "zoom_in"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/n;->g()V

    const-string v0, "aqi_detail"

    const-string v1, "locate"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f000f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->b()V

    new-instance v0, Lcom/miui/weather2/tools/n;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFourthPart;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->f:Lcom/amap/api/maps2d/MapView;

    invoke-direct {v0, v1, v2}, Lcom/miui/weather2/tools/n;-><init>(Landroid/content/Context;Lcom/amap/api/maps2d/MapView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/tools/n;->a(Lcom/miui/weather2/tools/s$a;)V

    return-void
.end method

.method public setCityData(Lcom/miui/weather2/structures/CityData;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->g:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/n;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFourthPart;->h:Lcom/miui/weather2/tools/n;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/tools/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
