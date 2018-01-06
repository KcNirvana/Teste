.class Lcom/amap/api/maps2d/a/u;
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
        "Lcom/amap/api/maps2d/a/h;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/h;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    new-instance v4, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    return-object v4
.end method

.method public a(I)[Lcom/amap/api/maps2d/a/h;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/a/h;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/u;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/u;->a(I)[Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method
