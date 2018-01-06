.class public final Lcom/amap/api/maps2d/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/a/v;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps2d/a/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:F

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a/v;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/v;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/a/k;->CREATOR:Lcom/amap/api/maps2d/a/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/maps2d/a/k;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps2d/a/k;->f:F

    iput-boolean v1, p0, Lcom/amap/api/maps2d/a/k;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->h:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/a/k;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/maps2d/a/k;->l:I

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/k;->j:F

    return-object p0
.end method

.method public a(FF)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/k;->e:F

    iput p2, p0, Lcom/amap/api/maps2d/a/k;->f:F

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/k;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a/k;->m()V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/a/k;->b:Lcom/amap/api/maps2d/a/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/a/k;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/amap/api/maps2d/a/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/a/a;",
            ">;)",
            "Lcom/amap/api/maps2d/a/k;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(Z)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/a/k;->g:Z

    return-object p0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->l:I

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/a/k;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/a/k;->h:Z

    return-object p0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->j:F

    return v0
.end method

.method public c(Z)Lcom/amap/api/maps2d/a/k;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/a/k;->i:Z

    return-object p0
.end method

.method public d()Lcom/amap/api/maps2d/a/h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->b:Lcom/amap/api/maps2d/a/h;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/amap/api/maps2d/a/a;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->e:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->f:F

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->g:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->h:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->i:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->b:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->g:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/maps2d/a/k;->i:Z

    if-eqz v0, :cond_3

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/maps2d/a/k;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
