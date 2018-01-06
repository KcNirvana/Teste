.class public Lcom/miui/weather2/structures/DailyForecastAdData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/DailyForecastAdInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private triggerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/DailyForecastAdInfoData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->triggerId:Ljava/lang/String;

    return-object v0
.end method

.method public isAdInfosExistence()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAdTitleExistence()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLandingPageUrlExistence()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isUseSystemBrowserExistence()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setAdInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/DailyForecastAdInfoData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->adInfos:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->status:Ljava/lang/String;

    return-void
.end method

.method public setTriggerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdData;->triggerId:Ljava/lang/String;

    return-void
.end method
