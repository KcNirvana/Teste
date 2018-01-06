.class public Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

.field private f:Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

.field private g:Lcom/miui/weather2/structures/MinuteRainData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->g:Lcom/miui/weather2/structures/MinuteRainData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->g:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/MinuteRainData;->getFgUpdateTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/miui/weather2/tools/bi;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->e:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->a:Landroid/widget/TextView;

    const v0, 0x7f0f013a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0139

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0138

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->d:Landroid/widget/ImageView;

    const v0, 0x7f0f0136

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->f:Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->e:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->e:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->setFirstPageViewFlag(Z)V

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/MinuteRainData;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->g:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->e:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->setMinuteRainData(Lcom/miui/weather2/structures/MinuteRainData;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->f:Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getRoughWeatherType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->setWeatherType(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getColorfulIconByWeatherType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getFgUpdateTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/miui/weather2/tools/bi;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainerIndex;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/weather2/structures/MinuteRainData;->getRealTimeWeatherDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
