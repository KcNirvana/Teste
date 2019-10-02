.class final Lcom/kaltura/playkit/PKMediaSource$1;
.super Ljava/lang/Object;
.source "PKMediaSource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PKMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kaltura/playkit/PKMediaSource;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/PKMediaSource;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/PKMediaSource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/PKMediaSource$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kaltura/playkit/PKMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/kaltura/playkit/PKMediaSource;
    .locals 0

    new-array p1, p1, [Lcom/kaltura/playkit/PKMediaSource;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/PKMediaSource$1;->newArray(I)[Lcom/kaltura/playkit/PKMediaSource;

    move-result-object p1

    return-object p1
.end method
