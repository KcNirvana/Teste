.class public Lcom/sdu/didi/openapi/location/Location;
.super Ljava/lang/Object;


# instance fields
.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private mapType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getMapType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-object v0
.end method

.method public isAvail()Z
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

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

.method public reset()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    return-void
.end method

.method public setMapType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Location{lat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lng=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mapType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
