.class public Lcom/amap/api/maps2d/d;
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
        "Lcom/amap/api/maps2d/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/c;
    .locals 4

    new-instance v1, Lcom/amap/api/maps2d/c;

    invoke-direct {v1}, Lcom/amap/api/maps2d/c;-><init>()V

    const-class v0, Lcom/amap/api/maps2d/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/c;->a(I)Lcom/amap/api/maps2d/c;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/c;->a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/maps2d/c;

    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/c;->e(Z)Lcom/amap/api/maps2d/c;

    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/c;->f(Z)Lcom/amap/api/maps2d/c;

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/c;->c(Z)Lcom/amap/api/maps2d/c;

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/c;->a(Z)Lcom/amap/api/maps2d/c;

    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/c;->d(Z)Lcom/amap/api/maps2d/c;

    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/c;->b(Z)Lcom/amap/api/maps2d/c;

    :cond_0
    return-object v1
.end method

.method public a(I)[Lcom/amap/api/maps2d/c;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/d;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/d;->a(I)[Lcom/amap/api/maps2d/c;

    move-result-object v0

    return-object v0
.end method
