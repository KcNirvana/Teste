.class public Lcom/miui/personalassistant/request/BallTeamsRequest;
.super Lcom/miui/personalassistant/request/core/HttpBizRequest;
.source "BallTeamsRequest.java"


# instance fields
.field private mCardKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/request/core/HttpBizRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/personalassistant/request/BallTeamsRequest;->mCardKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/BallTeamsRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/request/BallTeamsRequest;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v0, "language"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/BallTeamsRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/request/BallTeamsRequest;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_football"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/personalassistant/config/WebConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/request/BallTeamsRequest;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_basketball"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/personalassistant/config/WebConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
