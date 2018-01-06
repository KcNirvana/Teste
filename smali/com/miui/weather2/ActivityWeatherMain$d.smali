.class public Lcom/miui/weather2/ActivityWeatherMain$d;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityWeatherMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method public constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain$d;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f0129

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f012a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0f012b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain$d;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09013e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f02018b

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityWeatherMain$d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090098

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$d;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/tools/ax;->a(Lcom/miui/weather2/tools/ax$c;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$d;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setSpeeker(Lcom/miui/weather2/tools/ax;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$d;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$d;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->a(Lcom/miui/weather2/structures/CityData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$d;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->v(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/structures/AdvertismentData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V

    :goto_1
    return-object v3

    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v7}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->setVisibility(I)V

    goto :goto_1
.end method
