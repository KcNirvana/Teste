.class public Lcom/miui/weather2/tools/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/view/WeatherScrollView$b;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/weather2/tools/as;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/as;-><init>(Lcom/miui/weather2/tools/ar;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/ar;->c:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/weather2/tools/ar;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ar;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "normal_view"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/ar;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/ar;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ar;->a:Landroid/view/View;

    check-cast v0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    const-string v1, "alert_show"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0xa0

    const/16 v4, 0x97

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "template"

    iget-object v2, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Wth2:NormalViewTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportEvent() event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",template="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "weather_statistics"

    invoke-static {v1, p1, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "daily_forecast"

    iget-object v1, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "weather_TargetedDelivery_15show"

    invoke-static {v4, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "weather_BottomBar_15forecast_show"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    const-string v1, "air_quality_index"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x89

    const-string v1, "weather_info_style_abtest_new_air_quality"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "hourly_forecast"

    iget-object v1, p0, Lcom/miui/weather2/tools/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "weather_TargetedDelivery_24hour_show"

    invoke-static {v4, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "weather_BottomBar_24hour_show"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public getReportRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ar;->c:Ljava/lang/Runnable;

    return-object v0
.end method
