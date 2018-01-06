.class public final Lcom/amap/api/maps2d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/a/i$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/a/t;


# instance fields
.field public final a:Lcom/amap/api/maps2d/a/h;

.field public final b:Lcom/amap/api/maps2d/a/h;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a/t;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/t;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/a/i;->CREATOR:Lcom/amap/api/maps2d/a/t;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LatLngBounds"

    if-nez p2, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/b;

    const-string v1, "null southwest"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lcom/amap/api/maps2d/b;

    const-string v1, "null northeast"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p3, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v2, p2, Lcom/amap/api/maps2d/a/h;->a:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    new-instance v0, Lcom/amap/api/maps2d/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "southern latitude exceeds northern latitude ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/amap/api/maps2d/a/i;->c:I

    iput-object p2, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iput-object p3, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/maps2d/a/i;-><init>(ILcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V

    return-void
.end method

.method static synthetic a(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/a/i;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(D)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->a:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->a:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/a/i;->d(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->b:D

    iget-object v4, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v4, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static c(DD)D
    .locals 4

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double v0, p0, p2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private c(Lcom/amap/api/maps2d/a/i;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->b:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->b:D

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->b:D

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v1, Lcom/amap/api/maps2d/a/h;->b:D

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v1, Lcom/amap/api/maps2d/a/h;->b:D

    add-double/2addr v4, v6

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v1, Lcom/amap/api/maps2d/a/h;->b:D

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v1, Lcom/amap/api/maps2d/a/h;->a:D

    add-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v1, Lcom/amap/api/maps2d/a/h;->a:D

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v1, Lcom/amap/api/maps2d/a/h;->a:D

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-object v1, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v10, v1, Lcom/amap/api/maps2d/a/h;->a:D

    sub-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v10, v1, Lcom/amap/api/maps2d/a/h;->a:D

    add-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v10, v1, Lcom/amap/api/maps2d/a/h;->a:D

    sub-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(DD)D
    .locals 4

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double v0, p2, p0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/i;->c:I

    return v0
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/a/i;->a(D)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->b:D

    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/a/i;->b(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/i;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/a/i;->a(Lcom/amap/api/maps2d/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/a/i;->a(Lcom/amap/api/maps2d/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/amap/api/maps2d/a/i;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/a/i;->c(Lcom/amap/api/maps2d/a/i;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p1, p0}, Lcom/amap/api/maps2d/a/i;->c(Lcom/amap/api/maps2d/a/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

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
    instance-of v2, p1, Lcom/amap/api/maps2d/a/i;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/amap/api/maps2d/a/i;

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-object v3, p1, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-object v3, p1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/col/bz;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "southwest"

    iget-object v3, p0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    invoke-static {v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "northeast"

    iget-object v3, p0, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    invoke-static {v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/col/bz;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/a/t;->a(Lcom/amap/api/maps2d/a/i;Landroid/os/Parcel;I)V

    return-void
.end method
