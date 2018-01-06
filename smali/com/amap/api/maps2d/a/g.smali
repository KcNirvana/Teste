.class public final Lcom/amap/api/maps2d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/a/s;


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps2d/a/a;

.field private c:Lcom/amap/api/maps2d/a/h;

.field private d:F

.field private e:F

.field private f:Lcom/amap/api/maps2d/a/i;

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a/s;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/s;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/a/g;->CREATOR:Lcom/amap/api/maps2d/a/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/maps2d/a/g;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/a/g;->j:F

    iput v1, p0, Lcom/amap/api/maps2d/a/g;->k:F

    iput v1, p0, Lcom/amap/api/maps2d/a/g;->l:F

    iput v2, p0, Lcom/amap/api/maps2d/a/g;->a:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/amap/api/maps2d/a/h;FFLcom/amap/api/maps2d/a/i;FFZFFF)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/a/g;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/a/g;->j:F

    iput v1, p0, Lcom/amap/api/maps2d/a/g;->k:F

    iput v1, p0, Lcom/amap/api/maps2d/a/g;->l:F

    iput p1, p0, Lcom/amap/api/maps2d/a/g;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps2d/a/b;->a(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/a/g;->b:Lcom/amap/api/maps2d/a/a;

    iput-object p3, p0, Lcom/amap/api/maps2d/a/g;->c:Lcom/amap/api/maps2d/a/h;

    iput p4, p0, Lcom/amap/api/maps2d/a/g;->d:F

    iput p5, p0, Lcom/amap/api/maps2d/a/g;->e:F

    iput-object p6, p0, Lcom/amap/api/maps2d/a/g;->f:Lcom/amap/api/maps2d/a/i;

    iput p7, p0, Lcom/amap/api/maps2d/a/g;->g:F

    iput p8, p0, Lcom/amap/api/maps2d/a/g;->h:F

    iput-boolean p9, p0, Lcom/amap/api/maps2d/a/g;->i:Z

    iput p10, p0, Lcom/amap/api/maps2d/a/g;->j:F

    iput p11, p0, Lcom/amap/api/maps2d/a/g;->k:F

    iput p12, p0, Lcom/amap/api/maps2d/a/g;->l:F

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/maps2d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->b:Lcom/amap/api/maps2d/a/a;

    return-object v0
.end method

.method public a(F)Lcom/amap/api/maps2d/a/g;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "transparency"

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    :try_start_0
    const-string v2, "GroundOverlayOptions"

    const-string v3, "Transparency must be in the range [0..1]"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/amap/api/maps2d/a/g;->j:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayOptions"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public a(FF)Lcom/amap/api/maps2d/a/g;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/g;->k:F

    iput p2, p0, Lcom/amap/api/maps2d/a/g;->l:F

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/g;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/a/g;->b:Lcom/amap/api/maps2d/a/a;

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/a/i;)Lcom/amap/api/maps2d/a/g;
    .locals 4

    const-string v1, "positionFromBounds"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->c:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_0

    const-string v0, "GroundOverlayOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position has already been set using position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/maps2d/a/g;->c:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps2d/a/g;->f:Lcom/amap/api/maps2d/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayOptions"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/amap/api/maps2d/a/h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->c:Lcom/amap/api/maps2d/a/h;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->d:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->e:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/amap/api/maps2d/a/i;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->f:Lcom/amap/api/maps2d/a/i;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->g:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->h:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->j:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->k:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->l:F

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/g;->i:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->b:Lcom/amap/api/maps2d/a/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->c:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/g;->f:Lcom/amap/api/maps2d/a/i;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/g;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/g;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
