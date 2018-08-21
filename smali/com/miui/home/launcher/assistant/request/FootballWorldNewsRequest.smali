.class public Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;
.super Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;
.source "FootballWorldNewsRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v0, "teamId"

    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "language"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/config/WebConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
