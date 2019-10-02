.class public Lcom/kaltura/playkit/PKMediaSource;
.super Ljava/lang/Object;
.source "PKMediaSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kaltura/playkit/PKMediaSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private drmData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKDrmParams;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/PKMediaSource$1;

    invoke-direct {v0}, Lcom/kaltura/playkit/PKMediaSource$1;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/PKMediaSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    const-class v0, Lcom/kaltura/playkit/PKMediaFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/Utils;->byValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/PKMediaFormat;

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    sget-object v0, Lcom/kaltura/playkit/PKDrmParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/kaltura/playkit/PKMediaSource;

    iget-object v1, p0, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getDrmData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKDrmParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/kaltura/playkit/PKMediaFormat;->valueOfUrl(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasDrmParams()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setDrmData(Ljava/util/List;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKDrmParams;",
            ">;)",
            "Lcom/kaltura/playkit/PKMediaSource;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaFormat(Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaSource;->mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaSource;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaSource;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaSource;->mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-virtual {p2}, Lcom/kaltura/playkit/PKMediaFormat;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaSource;->drmData:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :goto_0
    return-void
.end method
