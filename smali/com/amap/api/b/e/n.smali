.class final Lcom/amap/api/b/e/n;
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
        "Lcom/amap/api/b/e/m;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/b/e/m;
    .locals 2

    new-instance v0, Lcom/amap/api/b/e/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/b/e/m;-><init>(Landroid/os/Parcel;Lcom/amap/api/b/e/n;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/b/e/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/e/n;->a(Landroid/os/Parcel;)Lcom/amap/api/b/e/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/e/n;->a(I)[Lcom/amap/api/b/e/m;

    move-result-object v0

    return-object v0
.end method
