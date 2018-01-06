.class public Lcom/miui/weather2/view/AqiQualityThirdPart;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RadioButton;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioGroup;

.field private d:Landroid/widget/HorizontalScrollView;

.field private e:Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;


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

.method static synthetic a(Lcom/miui/weather2/view/AqiQualityThirdPart;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->d:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/AqiQualityThirdPart;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->b:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/weather2/view/AqiQualityThirdPart;)Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->e:Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    const v3, 0x7f02015e

    const v2, 0x7f02015b

    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->a:Landroid/widget/RadioButton;

    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->b:Landroid/widget/RadioButton;

    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->c:Landroid/widget/RadioGroup;

    const v0, 0x7f0f0038

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->d:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->e:Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/miui/weather2/view/f;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/f;-><init>(Lcom/miui/weather2/view/AqiQualityThirdPart;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityThirdPart;->e:Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_0
    return-void
.end method
