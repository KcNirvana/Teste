.class public Lcom/ooyala/adtech/ContentMetadata;
.super Lcom/ooyala/pulse/ContentMetadata;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/pulse/ContentMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentIdentifierOfContentProviderInformation()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/ooyala/pulse/ContentMetadata;->getContentIdentifierOfContentProviderInformation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProviderCodeOfContentProviderInformation()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/ooyala/pulse/ContentMetadata;->getProviderCodeOfContentProviderInformation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ooyala/adtech/ContentMetadata;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ooyala/adtech/a;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INVALID_VALUE:I

    const-string v3, "ContentMetadata duration must be a positive value."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method
