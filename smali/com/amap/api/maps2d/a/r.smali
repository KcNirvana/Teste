.class Lcom/amap/api/maps2d/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/e;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Lcom/amap/api/maps2d/a/e;

    invoke-direct {v1}, Lcom/amap/api/maps2d/a/e;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    const-string v4, "lat"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "lng"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/a/e;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps2d/a/e;->a(D)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->a(F)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->a(I)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->b(I)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->b(F)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a/e;->a(Z)Lcom/amap/api/maps2d/a/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/maps2d/a/e;->a:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/amap/api/maps2d/a/e;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/a/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/r;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/r;->a(I)[Lcom/amap/api/maps2d/a/e;

    move-result-object v0

    return-object v0
.end method
