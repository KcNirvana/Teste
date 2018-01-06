.class public final Lcom/amap/api/maps2d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Lcom/amap/api/maps2d/a/p;


# instance fields
.field b:I

.field c:I

.field d:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a/p;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/p;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/a/a;->a:Lcom/amap/api/maps2d/a/p;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/maps2d/a/a;->b:I

    iput v0, p0, Lcom/amap/api/maps2d/a/a;->c:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/a/a;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/a/a;->c:I

    iput-object p1, p0, Lcom/amap/api/maps2d/a/a;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/maps2d/a/a;->b:I

    iput v0, p0, Lcom/amap/api/maps2d/a/a;->c:I

    iput p2, p0, Lcom/amap/api/maps2d/a/a;->b:I

    iput p3, p0, Lcom/amap/api/maps2d/a/a;->c:I

    iput-object p1, p0, Lcom/amap/api/maps2d/a/a;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/maps2d/a/a;
    .locals 5

    const-string v1, "clone"

    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/a/a;

    iget-object v2, p0, Lcom/amap/api/maps2d/a/a;->d:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/maps2d/a/a;->b:I

    iget v4, p0, Lcom/amap/api/maps2d/a/a;->c:I

    invoke-direct {v0, v2, v3, v4}, Lcom/amap/api/maps2d/a/a;-><init>(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "BitmapDescriptor"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/a;->b:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/maps2d/a/a;->a()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/a;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/a;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/a;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
