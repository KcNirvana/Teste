.class Lcom/miui/weather2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/miui/weather2/structures/DailyForecastAdData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityDailyForecastDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/DailyForecastAdData;Lretrofit/client/Response;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v1, "initAdvertisement() request dailyForecastAdData success"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAdvertisement() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_dailyforecast"

    const-string v1, "success_200"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;Lcom/miui/weather2/structures/DailyForecastAdData;)Lcom/miui/weather2/structures/DailyForecastAdData;

    iget-object v0, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->isAdTitleExistence()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v2, v1}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAdvertisement() ad closed today:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v2}, Lcom/miui/weather2/ActivityDailyForecastDetail;->c(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v1}, Lcom/miui/weather2/ActivityDailyForecastDetail;->c(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v1}, Lcom/miui/weather2/ActivityDailyForecastDetail;->g(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIEW"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getEx()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/weather2/h;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v3}, Lcom/miui/weather2/ActivityDailyForecastDetail;->c(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "ad_dailyforecast"

    const-string v1, "success_downloaded"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ad_dailyforecast"

    const-string v1, "success_null"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v1, "initAdvertisement() request dailyForecastAdData failed"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAdvertisement() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_dailyforecast"

    const-string v1, "fail_request"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/h;->a(Lcom/miui/weather2/structures/DailyForecastAdData;Lretrofit/client/Response;)V

    return-void
.end method
