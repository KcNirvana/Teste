.class public Lcom/miui/payment/captor/config/TextPatternConfig;
.super Ljava/lang/Object;
.source "TextPatternConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/captor/config/TextPatternConfig$Feature;,
        Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;,
        Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;
    }
.end annotation


# instance fields
.field private backTracking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configVersion:I

.field private features:Lcom/miui/payment/captor/config/TextPatternConfig$Feature;

.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackTracking()Ljava/util/List;
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

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->backTracking:Ljava/util/List;

    return-object v0
.end method

.method public getConfigVersion()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->configVersion:I

    return v0
.end method

.method public getFeatures()Lcom/miui/payment/captor/config/TextPatternConfig$Feature;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->features:Lcom/miui/payment/captor/config/TextPatternConfig$Feature;

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->packages:Ljava/util/List;

    return-object v0
.end method

.method public setBackTracking(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->backTracking:Ljava/util/List;

    return-void
.end method

.method public setConfigVersion(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->configVersion:I

    return-void
.end method

.method public setFeatures(Lcom/miui/payment/captor/config/TextPatternConfig$Feature;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->features:Lcom/miui/payment/captor/config/TextPatternConfig$Feature;

    return-void
.end method

.method public setPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig;->packages:Ljava/util/List;

    return-void
.end method
