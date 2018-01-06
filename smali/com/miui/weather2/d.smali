.class Lcom/miui/weather2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityDailyForecastDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->isAdInfosExistence()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    iget-object v1, p0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    new-instance v2, Lcom/miui/weather2/e;

    invoke-direct {v2, p0, v0}, Lcom/miui/weather2/e;-><init>(Lcom/miui/weather2/d;Lcom/miui/weather2/structures/DailyForecastAdInfoData;)V

    const-string v3, "weather2_15daylink"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getEx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/d;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->b(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    :cond_0
    return-void
.end method
