.class Lcom/kaltura/playkit/drm/SimpleDashParser;
.super Ljava/lang/Object;
.source "SimpleDashParser.java"


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field format:Lcom/google/android/exoplayer2/Format;

.field hasContentProtection:Z

.field widevineInitData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SimpleDashParser"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/drm/SimpleDashParser;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWidevineInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "No PSSH in media"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "No Widevine PSSH in media"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    move-object p1, v2

    :cond_2
    return-object p1
.end method

.method private loadDrmInitData(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    iget-object v3, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    invoke-direct {p1, v0, v7, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    new-instance v8, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v3, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v5, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x2

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->load()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/kaltura/playkit/drm/SimpleDashParser;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    aget-object p1, p1, v7

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object p1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/SimpleDashParser;->getWidevineInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    iput-object p1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->widevineInitData:[B

    :cond_0
    return-void
.end method


# virtual methods
.method parse(Ljava/lang/String;Ljava/lang/String;)Lcom/kaltura/playkit/drm/SimpleDashParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iput-object v1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-lez v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->hasContentProtection:Z

    iget-boolean p2, p0, Lcom/kaltura/playkit/drm/SimpleDashParser;->hasContentProtection:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/SimpleDashParser;->loadDrmInitData(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/kaltura/playkit/drm/SimpleDashParser;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "no content protection found"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "drmInitData is not initialized"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object p0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "At least one video representation is required"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "At least one period is required"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
