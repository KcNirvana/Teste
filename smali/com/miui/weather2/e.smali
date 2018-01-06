.class Lcom/miui/weather2/e;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/structures/DailyForecastAdInfoData;

.field final synthetic b:Lcom/miui/weather2/d;


# direct methods
.method constructor <init>(Lcom/miui/weather2/d;Lcom/miui/weather2/structures/DailyForecastAdInfoData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/e;->b:Lcom/miui/weather2/d;

    iput-object p2, p0, Lcom/miui/weather2/e;->a:Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/e;->b:Lcom/miui/weather2/d;

    iget-object v0, v0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->b(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    const-string v0, "sign_out"

    const-string v1, "forecast_detail"

    const-string v2, "weather_textad_adclose_button"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/e;->a:Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tag_id"

    iget-object v2, p0, Lcom/miui/weather2/e;->a:Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/weather2/e;->a:Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u6807\u9898"

    iget-object v2, p0, Lcom/miui/weather2/e;->a:Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "category_advertisement"

    const-string v2, "ad_close_clicked"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
