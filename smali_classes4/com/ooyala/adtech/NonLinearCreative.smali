.class public Lcom/ooyala/adtech/NonLinearCreative;
.super Lcom/ooyala/adtech/Creative;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:F

.field b:I

.field c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/adtech/Creative;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/NonLinearCreative;->a:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/NonLinearCreative;->c:I

    return v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Resource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/NonLinearCreative;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/NonLinearCreative;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/NonLinearCreative;->b:I

    return v0
.end method
