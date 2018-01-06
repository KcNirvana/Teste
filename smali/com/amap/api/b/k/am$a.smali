.class public Lcom/amap/api/b/k/am$a;
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
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/b/k/am$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/b/k/am$c;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/b/k/an;

    invoke-direct {v0}, Lcom/amap/api/b/k/an;-><init>()V

    sput-object v0, Lcom/amap/api/b/k/am$a;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/b/k/am$a;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/b/k/am$a;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/b/k/am$c;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    iput p2, p0, Lcom/amap/api/b/k/am$a;->b:I

    iput-object p3, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/amap/api/b/k/am$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/b/k/am$a;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/b/k/am$a;

    iget-object v1, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    iget v2, p0, Lcom/amap/api/b/k/am$a;->b:I

    iget-object v3, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    iget v4, p0, Lcom/amap/api/b/k/am$a;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/b/k/am$a;-><init>(Lcom/amap/api/b/k/am$c;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/b/k/am$a;->a(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "BusRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/b/k/am$a;->a()Lcom/amap/api/b/k/am$a;

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
    check-cast p1, Lcom/amap/api/b/k/am$a;

    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    iget-object v3, p1, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {v2, v3}, Lcom/amap/api/b/k/am$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/amap/api/b/k/am$a;->b:I

    iget v3, p1, Lcom/amap/api/b/k/am$a;->b:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/amap/api/b/k/am$a;->e:I

    iget v3, p1, Lcom/amap/api/b/k/am$a;->e:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/b/k/am$a;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/b/k/am$a;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {v0}, Lcom/amap/api/b/k/am$c;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->a:Lcom/amap/api/b/k/am$c;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/b/k/am$a;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/b/k/am$a;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/b/k/am$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
