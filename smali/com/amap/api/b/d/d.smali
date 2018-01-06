.class Lcom/amap/api/b/d/d;
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
        "Lcom/amap/api/b/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/b/d/c;


# direct methods
.method constructor <init>(Lcom/amap/api/b/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/b/d/d;->a:Lcom/amap/api/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/b/d/c;
    .locals 1

    new-instance v0, Lcom/amap/api/b/d/c;

    invoke-direct {v0, p1}, Lcom/amap/api/b/d/c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/b/d/c;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/b/d/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/d/d;->a(Landroid/os/Parcel;)Lcom/amap/api/b/d/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/d/d;->a(I)[Lcom/amap/api/b/d/c;

    move-result-object v0

    return-object v0
.end method
