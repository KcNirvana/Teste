.class Lcom/amap/api/maps2d/a/q;
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
        "Lcom/amap/api/maps2d/a/c;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/c;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    new-instance v5, Lcom/amap/api/maps2d/a/c;

    new-instance v6, Lcom/amap/api/maps2d/a/h;

    float-to-double v8, v1

    float-to-double v10, v2

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-direct {v5, v6, v4, v3, v0}, Lcom/amap/api/maps2d/a/c;-><init>(Lcom/amap/api/maps2d/a/h;FFF)V

    return-object v5
.end method

.method public a(I)[Lcom/amap/api/maps2d/a/c;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/a/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/q;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/q;->a(I)[Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    return-object v0
.end method
