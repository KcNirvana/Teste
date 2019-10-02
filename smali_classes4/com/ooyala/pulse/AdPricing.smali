.class public Lcom/ooyala/pulse/AdPricing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdPricing;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdPricing;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPricing()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdPricing;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdPricing;->b:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "CPM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CPC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CPV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/ooyala/pulse/AdPricing;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setPricing(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdPricing;->c:Ljava/lang/Float;

    return-void
.end method
