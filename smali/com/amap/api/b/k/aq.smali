.class final Lcom/amap/api/b/k/aq;
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
        "Lcom/amap/api/b/k/am$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/b/k/am$e;
    .locals 1

    new-instance v0, Lcom/amap/api/b/k/am$e;

    invoke-direct {v0, p1}, Lcom/amap/api/b/k/am$e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/b/k/am$e;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/b/k/am$e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/k/aq;->a(Landroid/os/Parcel;)Lcom/amap/api/b/k/am$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/k/aq;->a(I)[Lcom/amap/api/b/k/am$e;

    move-result-object v0

    return-object v0
.end method
