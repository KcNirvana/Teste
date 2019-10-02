.class public Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;
.super Ljava/lang/Object;
.source "OpenSubtitlesAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;
    }
.end annotation


# static fields
.field private static final END_POINT:Ljava/lang/String; = "http://api.opensubtitles.org/xml-rpc"

.field private static final LANGUAGE:Ljava/lang/String; = "en"

.field private static final USER_AGENT:Ljava/lang/String; = "CHAO_MIPLAYER v1"


# instance fields
.field private client:Lorg/apache/xmlrpc/client/XmlRpcClient;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClient;

    invoke-direct {v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;-><init>()V

    new-instance v1, Ljava/net/URL;

    const-string v2, "http://api.opensubtitles.org/xml-rpc"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->setServerURL(Ljava/net/URL;)V

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->setConnectionTimeout(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    invoke-virtual {v1, v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->setConfig(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/TypeFactory;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    invoke-direct {v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/TypeFactory;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcClient;->setTypeFactory(Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-void
.end method

.method private base64decode(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/ws/commons/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private executeAPI(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "status"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->getCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->fromCode(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    invoke-direct {p2, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excuteAPI error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method

.method private getCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method private gunzip([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public convertToOSubtitle(Ljava/util/Map;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;-><init>()V

    const-string v1, "MatchedBy"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMatchedBy(Ljava/lang/String;)V

    const-string v1, "IDSubMovieFile"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setIDSubMovieFile(Ljava/lang/String;)V

    const-string v1, "MovieHash"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieHash(Ljava/lang/String;)V

    const-string v1, "MovieByteSize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieByteSize(J)V

    const-string v1, "MovieTimeMS"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieTimeMS(J)V

    const-string v1, "IDSubtitleFile"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setIDSubtitleFile(Ljava/lang/String;)V

    const-string v1, "SubFileName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubFileName(Ljava/lang/String;)V

    const-string v1, "SubActualCD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubActualCD(Ljava/lang/String;)V

    const-string v1, "SubSize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubSize(Ljava/lang/String;)V

    const-string v1, "SubHash"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubHash(Ljava/lang/String;)V

    const-string v1, "IDSubtitle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setIDSubtitle(Ljava/lang/String;)V

    const-string v1, "UserID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setUserID(Ljava/lang/String;)V

    const-string v1, "SubLanguageID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubLanguageID(Ljava/lang/String;)V

    const-string v1, "SubFormat"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubFormat(Ljava/lang/String;)V

    const-string v1, "SubSumCD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubSumCD(Ljava/lang/String;)V

    const-string v1, "SubAuthorComment"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubAuthorComment(Ljava/lang/String;)V

    const-string v1, "SubAddDate"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubAddDate(Ljava/lang/String;)V

    const-string v1, "SubBad"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubBad(D)V

    const-string v1, "SubRating"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubRating(D)V

    const-string v1, "SubDownloadsCnt"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubDownloadsCnt(Ljava/lang/String;)V

    const-string v1, "MovieReleaseName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieReleaseName(Ljava/lang/String;)V

    const-string v1, "IDMovie"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setIDMovie(Ljava/lang/String;)V

    const-string v1, "IDMovieImdb"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setIDMovieImdb(Ljava/lang/String;)V

    const-string v1, "MovieName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieName(Ljava/lang/String;)V

    const-string v1, "MovieNameEng"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieNameEng(Ljava/lang/String;)V

    const-string v1, "MovieYear"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieYear(Ljava/lang/String;)V

    const-string v1, "MovieImdbRating"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieImdbRating(D)V

    const-string v1, "ISO639"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setISO639(Ljava/lang/String;)V

    const-string v1, "LanguageName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setLanguageName(Ljava/lang/String;)V

    const-string v1, "SubComments"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubComments(Ljava/lang/String;)V

    const-string v1, "UserRank"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setUserRank(Ljava/lang/String;)V

    const-string v1, "SeriesSeason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSeriesSeason(Ljava/lang/String;)V

    const-string v1, "SeriesEpisode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSeriesEpisode(Ljava/lang/String;)V

    const-string v1, "MovieKind"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setMovieKind(Ljava/lang/String;)V

    const-string v1, "SubDownloadLink"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubDownloadLink(Ljava/lang/String;)V

    const-string v1, "ZipDownloadLink"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setZipDownloadLink(Ljava/lang/String;)V

    const-string v1, "SubtitlesLink"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->setSubtitlesLink(Ljava/lang/String;)V

    return-object v0
.end method

.method public downloadSubtitle(Ljava/lang/String;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->DOWNLOAD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->executeAPI(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "data"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :try_start_0
    array-length p2, p1

    if-lez p2, :cond_0

    aget-object p1, p1, v3

    check-cast p1, Ljava/util/Map;

    const-string p2, "data"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->base64decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->gunzip([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    const-string v0, "download error"

    invoke-direct {p2, v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public executeSearch(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->SEARCH:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->executeAPI(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "MPB"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "data"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->convertToOSubtitle(Ljava/util/Map;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MPB"

    const-string p2, "No results found"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not know object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    const-string v0, "search error"

    invoke-direct {p2, v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSearchByHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sublanguageid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "moviehash"

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesHasher;->computeHash(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "moviebytesize"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSearchByImdbId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "imdbid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sublanguageid"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSearchByQuery(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "query"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const-string p1, "season"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "episode"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "sublanguageid"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "en"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "CHAO_MIPLAYER v1"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->LOGIN:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->executeAPI(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "token"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "token"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;

    const-string p2, "login error: token is null"

    invoke-direct {p1, p2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logout(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->LOGOUT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->executeAPI(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;Ljava/util/List;)Ljava/util/Map;

    return-void
.end method
