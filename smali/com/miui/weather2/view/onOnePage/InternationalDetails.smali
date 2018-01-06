.class public Lcom/miui/weather2/view/onOnePage/InternationalDetails;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;


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


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    const v4, 0x7f0f0067

    const v3, 0x7f0f005e

    const v2, 0x7f0f001c

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0f010b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->d:Landroid/widget/ImageView;

    const v0, 0x7f0f010c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->g:Landroid/widget/ImageView;

    const v0, 0x7f0f010d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->j:Landroid/widget/ImageView;

    const v0, 0x7f0f010e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->m:Landroid/widget/ImageView;

    const v0, 0x7f0f010f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->n:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 10

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v8}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->getVisibility()I

    move-result v0

    if-ne v8, v0, :cond_2

    invoke-virtual {p0, v7}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->a:Landroid/widget/TextView;

    const v2, 0x7f090090

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->d:Landroid/widget/ImageView;

    const v2, 0x7f0200d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f09008c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->g:Landroid/widget/ImageView;

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->h:Landroid/widget/TextView;

    const v2, 0x7f09008e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->j:Landroid/widget/ImageView;

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->k:Landroid/widget/TextView;

    const v2, 0x7f09008b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->m:Landroid/widget/ImageView;

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->s(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->s(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->b:Landroid/widget/TextView;

    const v4, 0x7f09008f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/miui/weather2/structures/WeatherData;->getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWindDirection()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getFeelTemp()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-static {v0, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getUv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->l:Landroid/widget/TextView;

    const v3, 0x7f0900b9

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getPressure()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/miui/weather2/structures/WeatherData;->getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWindDirection()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/InternationalDetails;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
