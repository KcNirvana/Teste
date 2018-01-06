.class Lcom/miui/weather2/ActivityDailyForecastDetail$a;
.super Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityDailyForecastDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/ActivityDailyForecastDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDownloadStart()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/ActivityDailyForecastDetail;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->d(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    const-string v2, "Wth2:ActivityDailyForecastDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadStart() Downloading package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", from"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/ActivityDailyForecastDetail;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->e(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    const-string v1, "Wth2:ActivityDailyForecastDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadSuccess() Downloading package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInstallSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/ActivityDailyForecastDetail;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->f(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    const-string v1, "Wth2:ActivityDailyForecastDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstallSuccess() Install package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
