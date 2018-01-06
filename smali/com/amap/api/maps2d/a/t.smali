.class Lcom/amap/api/maps2d/a/t;
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
        "Lcom/amap/api/maps2d/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/amap/api/maps2d/a/i;Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/a/i;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/i;
    .locals 6

    const/4 v2, 0x0

    const-string v3, "createFromParcel"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/h;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v1, Lcom/amap/api/maps2d/a/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/a/h;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    new-instance v3, Lcom/amap/api/maps2d/a/i;

    invoke-direct {v3, v4, v0, v1}, Lcom/amap/api/maps2d/a/i;-><init>(ILcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V
    :try_end_2
    .catch Lcom/amap/api/maps2d/b; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_2
    const-string v5, "LatLngBoundsCreator"

    invoke-static {v1, v5, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/b;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public a(I)[Lcom/amap/api/maps2d/a/i;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps2d/a/i;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/t;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a/t;->a(I)[Lcom/amap/api/maps2d/a/i;

    move-result-object v0

    return-object v0
.end method
