.class public Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
.super Ljava/lang/Object;
.source "LocalMediaEntity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity$BooleanConvert;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private address:Ljava/lang/String;

.field private bucketDisplayName:Ljava/lang/String;

.field private currPlayTime:J

.field private date:Ljava/lang/String;

.field private dateAdded:J

.field private dateModified:J

.field private directoryPath:Ljava/lang/String;

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/Long;

.field private isChecked:Z

.field private isFastSlowVideo:Z

.field private isHidded:Z

.field private isParsed:Ljava/lang/Boolean;

.field private isSupportAiMusic:Z

.field private latitude:D

.field private location:Ljava/lang/String;

.field private longtitude:D

.field private mapId:J

.field private mimeType:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private rotation:I

.field private size:J

.field private width:I

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity$1;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity$1;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->id:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->directoryPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateAdded:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateModified:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->latitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->longtitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->currPlayTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isFastSlowVideo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isSupportAiMusic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->rotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->date:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->month:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->year:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mapId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;IIDDIZJJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->id:Ljava/lang/Long;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mapId:J

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->directoryPath:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->fileName:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->filePath:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->size:J

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    move-wide v1, p10

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateAdded:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateModified:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->bucketDisplayName:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->width:I

    move/from16 v1, p16

    iput v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->height:I

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->latitude:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->longtitude:D

    move/from16 v1, p21

    iput v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->rotation:I

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->duration:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->currPlayTime:J

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isFastSlowVideo:Z

    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isSupportAiMusic:Z

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->location:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->address:Ljava/lang/String;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->date:Ljava/lang/String;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->month:Ljava/lang/String;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->year:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->bucketDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrPlayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->currPlayTime:J

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateAdded:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateModified:J

    return-wide v0
.end method

.method public getDirectoryPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->directoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->height:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFastSlowVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isFastSlowVideo:Z

    return v0
.end method

.method public getIsHidded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    return v0
.end method

.method public getIsParsed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIsSupportAiMusic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isSupportAiMusic:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->latitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLongtitude()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->longtitude:D

    return-wide v0
.end method

.method public getMapId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mapId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->rotation:I

    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->size:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->width:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->year:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked:Z

    return v0
.end method

.method public isHidded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    return v0
.end method

.method public isImage()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->address:Ljava/lang/String;

    return-void
.end method

.method public setBucketDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->bucketDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked:Z

    return-void
.end method

.method public setCurrPlayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->currPlayTime:J

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->date:Ljava/lang/String;

    return-void
.end method

.method public setDateAdded(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateAdded:J

    return-void
.end method

.method public setDateModified(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateModified:J

    return-void
.end method

.method public setDirectoryPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->directoryPath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->height:I

    return-void
.end method

.method public setHidded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked:Z

    return-void
.end method

.method public setIsFastSlowVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isFastSlowVideo:Z

    return-void
.end method

.method public setIsHidded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    return-void
.end method

.method public setIsParsed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsSupportAiMusic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isSupportAiMusic:Z

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->latitude:D

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->location:Ljava/lang/String;

    return-void
.end method

.method public setLongtitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->longtitude:D

    return-void
.end method

.method public setMapId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mapId:J

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->month:Ljava/lang/String;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->rotation:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->size:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->width:I

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->year:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->id:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->directoryPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateAdded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->dateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->longtitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->currPlayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isFastSlowVideo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isSupportAiMusic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->rotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->location:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->month:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->year:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->mapId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isParsed:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
