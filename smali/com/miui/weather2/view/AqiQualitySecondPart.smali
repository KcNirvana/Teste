.class public Lcom/miui/weather2/view/AqiQualitySecondPart;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final o:[Ljava/lang/String;


# instance fields
.field private a:Lcom/miui/weather2/structures/AQIData;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:[Landroid/widget/TextView;

.field private g:[Landroid/widget/TextView;

.field private h:[Landroid/widget/ProgressBar;

.field private i:[Landroid/widget/RelativeLayout;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pm25"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pm10"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SO2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NO2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "O3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/view/AqiQualitySecondPart;->o:[Ljava/lang/String;

    return-void
.end method

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

.method static synthetic a(Lcom/miui/weather2/view/AqiQualitySecondPart;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->k:I

    return p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/AqiQualitySecondPart;)[Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/AqiQualitySecondPart;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/AqiQualitySecondPart;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->l:I

    return p1
.end method

.method static synthetic c(Lcom/miui/weather2/view/AqiQualitySecondPart;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->m:I

    return v0
.end method

.method static synthetic d(Lcom/miui/weather2/view/AqiQualitySecondPart;)Lcom/miui/weather2/structures/AQIData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/weather2/view/AqiQualitySecondPart;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->n:I

    return v0
.end method

.method static synthetic f(Lcom/miui/weather2/view/AqiQualitySecondPart;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic g(Lcom/miui/weather2/view/AqiQualitySecondPart;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->l:I

    return v0
.end method

.method static synthetic h(Lcom/miui/weather2/view/AqiQualitySecondPart;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->k:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    const-string v0, "--"

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    iget v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    invoke-virtual {v1, v2}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    iget v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    invoke-virtual {v1, v2}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemTitle(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    const-string v0, "aqi_detail"

    sget-object v1, Lcom/miui/weather2/view/AqiQualitySecondPart;->o:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->j:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->m:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->n:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0069

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->d:Landroid/widget/TextView;

    const v0, 0x7f0f006a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->e:Landroid/widget/TextView;

    const v0, 0x7f0f0068

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->d:Landroid/widget/TextView;

    sget-object v3, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lcom/miui/weather2/view/d;

    invoke-direct {v0, p0, v2}, Lcom/miui/weather2/view/d;-><init>(Lcom/miui/weather2/view/AqiQualitySecondPart;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/miui/weather2/view/e;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/e;-><init>(Lcom/miui/weather2/view/AqiQualitySecondPart;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    const v2, 0x7f0c0009

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-array v0, v5, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f001b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0020

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v4

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v6

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0028

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v7

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    const v0, 0x7f0f002c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x5

    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v3

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    const v0, 0x7f0f001e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    const v0, 0x7f0f0022

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v6

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v7

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    const/4 v3, 0x4

    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    const/4 v3, 0x5

    const v0, 0x7f0f0032

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    const v0, 0x7f0f0021

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    const v0, 0x7f0f0025

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v6

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    const v0, 0x7f0f0029

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v7

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    const/4 v3, 0x4

    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    const/4 v3, 0x5

    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    new-array v0, v5, [Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    const v0, 0x7f0f0023

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v2, v4

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v2, v6

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    const v0, 0x7f0f002b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v2, v7

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    const/4 v3, 0x5

    const v0, 0x7f0f0033

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v2, v3

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->i:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3, v1}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemFraction(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->h:[Landroid/widget/ProgressBar;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v5, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/miui/weather2/bf;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->g:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v2, v0}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->f:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/weather2/view/AqiQualitySecondPart;->a:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3, v0}, Lcom/miui/weather2/structures/AQIData;->getPollutionItemLevel(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
