.class public Lcom/hungama/movies/sdk/Utils/M3u8MetaData;
.super Ljava/lang/Object;
.source "M3u8MetaData.java"


# instance fields
.field private bandwidth:I

.field private mDisplayBandWidth:Ljava/lang/String;

.field private mProgressiveResolution:Ljava/lang/String;

.field private mQuality:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mDisplayBandWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mProgressiveResolution:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mProgressiveResolution:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getProgressResolution()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBandwidth()I
    .locals 1

    iget v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->bandwidth:I

    return v0
.end method

.method public getProgressResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mProgressiveResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mQuality:Ljava/lang/String;

    return-object v0
.end method

.method public setBandwidth(I)V
    .locals 0

    iput p1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->bandwidth:I

    return-void
.end method

.method public setDisplayBandwidth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mDisplayBandWidth:Ljava/lang/String;

    return-void
.end method

.method public setProgressResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mProgressiveResolution:Ljava/lang/String;

    return-void
.end method

.method public setQuality(I)V
    .locals 2

    div-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x3b6

    if-gt p1, v0, :cond_0

    sget-object v1, Lcom/hungama/movies/sdk/a/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mQuality:Ljava/lang/String;

    :cond_0
    const/16 v1, 0x898

    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    sget-object v0, Lcom/hungama/movies/sdk/a/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mQuality:Ljava/lang/String;

    :cond_1
    const/16 v0, 0xdac

    if-le p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    sget-object v1, Lcom/hungama/movies/sdk/a/b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mQuality:Ljava/lang/String;

    :cond_2
    if-le p1, v0, :cond_3

    sget-object p1, Lcom/hungama/movies/sdk/a/b;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mQuality:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setmQuality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mQuality:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->mProgressiveResolution:Ljava/lang/String;

    return-object v0
.end method
