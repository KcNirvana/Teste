.class public Lcom/amap/api/b/k/am$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/b/k/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/b/k/am$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/b/k/am$c;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/b/k/aq;

    invoke-direct {v0}, Lcom/amap/api/b/k/aq;-><init>()V

    sput-object v0, Lcom/amap/api/b/k/am$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amap/api/b/k/am$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/k/am$c;

    iput-object v0, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/b/k/am$e;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/b/k/am$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    iput p2, p0, Lcom/amap/api/b/k/am$e;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/b/k/am$e;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/b/k/am$e;

    iget-object v1, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    iget v2, p0, Lcom/amap/api/b/k/am$e;->b:I

    invoke-direct {v0, v1, v2}, Lcom/amap/api/b/k/am$e;-><init>(Lcom/amap/api/b/k/am$c;I)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "RideRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/b/k/am$e;->a()Lcom/amap/api/b/k/am$e;

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
    check-cast p1, Lcom/amap/api/b/k/am$f;

    iget-object v2, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/amap/api/b/k/am$f;->a(Lcom/amap/api/b/k/am$f;)Lcom/amap/api/b/k/am$c;

    move-result-object v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    invoke-static {p1}, Lcom/amap/api/b/k/am$f;->a(Lcom/amap/api/b/k/am$f;)Lcom/amap/api/b/k/am$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/b/k/am$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/amap/api/b/k/am$e;->b:I

    invoke-static {p1}, Lcom/amap/api/b/k/am$f;->b(Lcom/amap/api/b/k/am$f;)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/b/k/am$e;->b:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {v0}, Lcom/amap/api/b/k/am$c;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/k/am$e;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/b/k/am$e;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
