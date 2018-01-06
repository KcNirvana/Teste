.class public Lcom/miui/weather2/structures/InformationData;
.super Lcom/miui/weather2/structures/SingleItemCommerialData;
.source "SourceFile"


# instance fields
.field private mPubTime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mViews:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/structures/SingleItemCommerialData;-><init>()V

    return-void
.end method


# virtual methods
.method public getPubTimeNum()J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/InformationData;->mPubTime:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InformationData;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InformationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InformationData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewsNum()I
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/InformationData;->mViews:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setPubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InformationData;->mPubTime:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InformationData;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InformationData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InformationData;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InformationData;->mViews:Ljava/lang/String;

    return-void
.end method
