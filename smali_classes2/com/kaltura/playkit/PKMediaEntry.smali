.class public Lcom/kaltura/playkit/PKMediaEntry;
.super Ljava/lang/Object;
.source "PKMediaEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kaltura/playkit/PKMediaEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:J

.field private id:Ljava/lang/String;

.field private mediaType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKMediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/PKMediaEntry$1;

    invoke-direct {v0}, Lcom/kaltura/playkit/PKMediaEntry$1;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/PKMediaEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->name:Ljava/lang/String;

    sget-object v0, Lcom/kaltura/playkit/PKMediaSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->values()[Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    move-result-object v3

    aget-object v0, v3, v0

    :goto_0
    iput-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->mediaType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    iput-object v1, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->duration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->mediaType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKMediaSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

    return-object v0
.end method

.method public hasSources()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

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

.method public setDuration(J)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 0

    iput-wide p1, p0, Lcom/kaltura/playkit/PKMediaEntry;->duration:J

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaType(Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaEntry;->mediaType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    return-object p0
.end method

.method public setMetadata(Ljava/util/Map;)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kaltura/playkit/PKMediaEntry;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setSources(Ljava/util/List;)Lcom/kaltura/playkit/PKMediaEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKMediaSource;",
            ">;)",
            "Lcom/kaltura/playkit/PKMediaEntry;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->sources:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :goto_0
    iget-wide v0, p0, Lcom/kaltura/playkit/PKMediaEntry;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->mediaType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    const/4 v0, -0x1

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->mediaType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    invoke-virtual {p2}, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->ordinal()I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/kaltura/playkit/PKMediaEntry;->metadata:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method
