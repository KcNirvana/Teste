.class Lcom/miui/weather2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityDailyForecastDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->isAdInfosExistence()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "CLICK"

    iget-object v0, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getEx()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v3}, Lcom/miui/weather2/ActivityDailyForecastDetail;->c(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/f;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a()V

    return-void
.end method
