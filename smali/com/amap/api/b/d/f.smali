.class public Lcom/amap/api/b/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/b/d/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/b/d/g;

    invoke-direct {v0}, Lcom/amap/api/b/d/g;-><init>()V

    sput-object v0, Lcom/amap/api/b/d/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/b/d/f;->a:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/b/d/f;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/b/d/f;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/b/d/f;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/b/d/f;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/b/d/f;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/b/d/f;

    invoke-direct {v0}, Lcom/amap/api/b/d/f;-><init>()V

    iget-object v1, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/b/d/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/amap/api/b/d/f;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->a(I)V

    iget v1, p0, Lcom/amap/api/b/d/f;->b:I

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->b(I)V

    iget-boolean v1, p0, Lcom/amap/api/b/d/f;->e:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->b(Z)V

    iget-boolean v1, p0, Lcom/amap/api/b/d/f;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->a(Z)V

    iget-boolean v1, p0, Lcom/amap/api/b/d/f;->f:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/b/d/f;->c(Z)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DistrictSearchQuery"

    const-string v2, "clone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/b/d/f;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/b/d/f;->g:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/b/d/f;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/b/d/f;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/b/d/f;->e:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/b/d/f;->f:Z

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/b/d/f;->a()Lcom/amap/api/b/d/f;

    move-result-object v0

    return-object v0
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
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/api/b/d/f;

    iget-boolean v2, p0, Lcom/amap/api/b/d/f;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/b/d/f;->g:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/amap/api/b/d/f;->a:I

    iget v3, p1, Lcom/amap/api/b/d/f;->a:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/amap/api/b/d/f;->b:I

    iget v3, p1, Lcom/amap/api/b/d/f;->b:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/amap/api/b/d/f;->e:Z

    iget-boolean v3, p1, Lcom/amap/api/b/d/f;->e:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/amap/api/b/d/f;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/amap/api/b/d/f;->d:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/amap/api/b/d/f;->a:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/amap/api/b/d/f;->b:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/amap/api/b/d/f;->e:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/amap/api/b/d/f;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/b/d/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/b/d/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/b/d/f;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/b/d/f;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/amap/api/b/d/f;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/b/d/f;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/b/d/f;->f:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

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
