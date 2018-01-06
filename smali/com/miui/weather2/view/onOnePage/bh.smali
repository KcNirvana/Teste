.class Lcom/miui/weather2/view/onOnePage/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/weather2/structures/Alert;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/Alert;->getIsAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/structures/WeatherData;->getAlertArray()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v4}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->g(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v5}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z

    move-result v5

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v6}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IZI)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    const/high16 v1, 0x10a0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/Activity;->overridePendingTransition(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/weather2/structures/Alert;->getInfoDataBean()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->g(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v4}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v5}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/bh;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v6}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->j(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/InfoDataBean;IZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
