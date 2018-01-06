.class Lcom/amap/api/maps2d/a/p;
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
        "Lcom/amap/api/maps2d/a/a;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/a;
    .locals 2

    new-instance v1, Lcom/amap/api/maps2d/a/a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/a;-><init>(Landroid/graphics/Bitmap;)V

    const-class v0, Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/amap/api/maps2d/a/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/amap/api/maps2d/a/a;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/amap/api/maps2d/a/a;->c:I

    return-object v1
.end method

.method public a(I)[Lcom/amap/api/maps2d/a/a;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/a/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/p;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/p;->a(I)[Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    return-object v0
.end method
