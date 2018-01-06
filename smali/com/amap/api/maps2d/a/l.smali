.class public Lcom/amap/api/maps2d/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private a:Lcom/amap/api/maps2d/a/a;

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/maps2d/a/l;->b:F

    iput v0, p0, Lcom/amap/api/maps2d/a/l;->c:F

    const/16 v0, 0x64

    const/16 v1, 0xb4

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/a/l;->d:I

    const/16 v0, 0xff

    const/16 v1, 0xdc

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/a/l;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps2d/a/l;->f:F

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/maps2d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/l;->a:Lcom/amap/api/maps2d/a/a;

    return-object v0
.end method

.method public a(I)Lcom/amap/api/maps2d/a/l;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/l;->d:I

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/l;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/a/l;->a:Lcom/amap/api/maps2d/a/a;

    return-object p0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->b:F

    return v0
.end method

.method public b(I)Lcom/amap/api/maps2d/a/l;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/l;->e:I

    return-object p0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->c:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->e:I

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->f:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/l;->a:Lcom/amap/api/maps2d/a/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/l;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
