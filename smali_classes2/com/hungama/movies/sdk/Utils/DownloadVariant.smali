.class public Lcom/hungama/movies/sdk/Utils/DownloadVariant;
.super Ljava/lang/Object;
.source "DownloadVariant.java"


# instance fields
.field private audio_track:Ljava/lang/String;

.field private bitrate:I

.field private height:I

.field private id:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private quality:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private video_track:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->id:Ljava/lang/String;

    iput p2, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->bitrate:I

    iput-object p3, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->imgUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->path:Ljava/lang/String;

    iput-object p6, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->quality:Ljava/lang/String;

    iput-object p7, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->url:Ljava/lang/String;

    return-void
.end method

.method private getQuality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->quality:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAudio_track()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->audio_track:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->bitrate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVariantDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_track()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->video_track:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->width:I

    return v0
.end method

.method public setAudio_track(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->audio_track:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->bitrate:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->height:I

    return-void
.end method

.method public setVideo_track(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->video_track:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/hungama/movies/sdk/Utils/DownloadVariant;->width:I

    return-void
.end method
