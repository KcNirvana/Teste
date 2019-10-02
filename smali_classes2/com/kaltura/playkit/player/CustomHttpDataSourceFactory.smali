.class public final Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "CustomHttpDataSourceFactory.java"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

.field private final pkRequestParams:Lcom/kaltura/playkit/PKRequestParams;

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kaltura/playkit/PKRequestParams;IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->pkRequestParams:Lcom/kaltura/playkit/PKRequestParams;

    iput p3, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->connectTimeoutMillis:I

    iput p4, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->readTimeoutMillis:I

    iput-boolean p5, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    return-void
.end method


# virtual methods
.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 11

    iget-object v0, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->pkRequestParams:Lcom/kaltura/playkit/PKRequestParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->pkRequestParams:Lcom/kaltura/playkit/PKRequestParams;

    iget-object v0, v0, Lcom/kaltura/playkit/PKRequestParams;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->pkRequestParams:Lcom/kaltura/playkit/PKRequestParams;

    iget-object v0, v0, Lcom/kaltura/playkit/PKRequestParams;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v4, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v8, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v9, p0, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    move-object v3, v0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v0
.end method

.method protected bridge synthetic createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object p1

    return-object p1
.end method
