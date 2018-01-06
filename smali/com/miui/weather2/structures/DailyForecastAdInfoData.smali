.class public Lcom/miui/weather2/structures/DailyForecastAdInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private allDownloadNum:I

.field private clickMonitorUrls:[Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private id:I

.field private imgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private landingPageUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

.field private sequence:I

.field private source:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private targetType:I

.field private template:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private viewMonitorUrls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAllDownloadNum()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->allDownloadNum:I

    return v0
.end method

.method public getClickMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->clickMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getDownloadInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->id:I

    return v0
.end method

.method public getImgUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->imgUrls:Ljava/util/List;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->sequence:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->targetType:I

    return v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->viewMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public isParametersExistence()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setAllDownloadNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->allDownloadNum:I

    return-void
.end method

.method public setClickMonitorUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->clickMonitorUrls:[Ljava/lang/String;

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->ex:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->id:I

    return-void
.end method

.method public setImgUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->imgUrls:Ljava/util/List;

    return-void
.end method

.method public setLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->landingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->parameters:Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    return-void
.end method

.method public setSequence(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->sequence:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->source:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->targetType:I

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->template:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewMonitorUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->viewMonitorUrls:[Ljava/lang/String;

    return-void
.end method
