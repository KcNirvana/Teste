.class Lcom/miui/weather2/view/onOnePage/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bk;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bk;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->t(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bk;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bk;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bk;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->t(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "normal_click"

    const-string v1, "weather_alert"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bk;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    const-string v1, "alert_click"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
