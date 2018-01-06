.class Lcom/amap/api/maps2d/a/v;
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
        "Lcom/amap/api/maps2d/a/k;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/k;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/amap/api/maps2d/a/k;

    invoke-direct {v3}, Lcom/amap/api/maps2d/a/k;-><init>()V

    const-class v0, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/k;

    const-class v0, Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->a(Ljava/lang/String;)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->b(Ljava/lang/String;)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/amap/api/maps2d/a/k;->a(FF)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->b(Z)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->a(Z)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/amap/api/maps2d/a/k;->c(Z)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/amap/api/maps2d/a/k;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->a(F)Lcom/amap/api/maps2d/a/k;

    sget-object v0, Lcom/amap/api/maps2d/a/a;->a:Lcom/amap/api/maps2d/a/p;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/a/k;->a(Ljava/util/ArrayList;)Lcom/amap/api/maps2d/a/k;

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public a(I)[Lcom/amap/api/maps2d/a/k;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/a/k;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/v;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/v;->a(I)[Lcom/amap/api/maps2d/a/k;

    move-result-object v0

    return-object v0
.end method
