.class public final Lcom/amap/api/maps2d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/a/c$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/a/q;


# instance fields
.field public final a:Lcom/amap/api/maps2d/a/h;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a/q;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/q;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/a/c;->CREATOR:Lcom/amap/api/maps2d/a/q;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/a/h;FFF)V
    .locals 7

    const/4 v0, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "CameraPosition"

    const-string v2, "\u6784\u5efaCameraPosition\u65f6,\u4f4d\u7f6e(target)\u4e0d\u80fd\u4e3anull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    invoke-static {p2}, Lcom/amap/api/col/bz;->b(F)F

    move-result v1

    iput v1, p0, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-static {p3}, Lcom/amap/api/col/bz;->a(F)F

    move-result v1

    iput v1, p0, Lcom/amap/api/maps2d/a/c;->c:F

    float-to-double v2, p4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    rem-float v1, p4, v6

    add-float p4, v1, v6

    :cond_1
    rem-float v1, p4, v6

    iput v1, p0, Lcom/amap/api/maps2d/a/c;->d:F

    if-eqz p1, :cond_3

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/a/h;->b:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/by;->a(DD)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/maps2d/a/c;->e:Z

    :goto_0
    return-void

    :cond_3
    iput-boolean v0, p0, Lcom/amap/api/maps2d/a/c;->e:Z

    goto :goto_0
.end method

.method public static a()Lcom/amap/api/maps2d/a/c$a;
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a/c$a;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/c$a;-><init>()V

    return-object v0
.end method

.method public static final a(Lcom/amap/api/maps2d/a/h;F)Lcom/amap/api/maps2d/a/c;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/amap/api/maps2d/a/c;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amap/api/maps2d/a/c;-><init>(Lcom/amap/api/maps2d/a/h;FFF)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/amap/api/maps2d/a/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/amap/api/maps2d/a/c;

    iget-object v2, p0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-object v3, p1, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/maps2d/a/c;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/a/c;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/maps2d/a/c;->d:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/a/c;->d:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "target"

    iget-object v3, p0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    invoke-static {v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zoom"

    iget v3, p0, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tilt"

    iget v3, p0, Lcom/amap/api/maps2d/a/c;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bearing"

    iget v3, p0, Lcom/amap/api/maps2d/a/c;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/col/bz;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/amap/api/maps2d/a/c;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->a:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->b:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_0
    iget v0, p0, Lcom/amap/api/maps2d/a/c;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
