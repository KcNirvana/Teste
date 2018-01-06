.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;

.field private final source:La/i;


# direct methods
.method constructor <init>(La/i;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->client:Z

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;-><init>(La/i;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;-><init>(ILa/aa;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;

    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_3
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$400(IBS)I

    move-result v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {p1, v2, p4, v3, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILa/i;I)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, La/i;->g(J)V

    return-void
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->k()I

    move-result v1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->k()I

    move-result v0

    add-int/lit8 v2, p2, -0x8

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v0, La/j;->a:La/j;

    if-lez v2, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, La/i;->c(J)La/j;

    move-result-object v0

    :cond_3
    invoke-interface {p1, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;La/j;)V

    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    iput p1, v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;->left:I

    iput p1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;->length:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;->padding:S

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;->flags:B

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$ContinuationSource;->streamId:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;->readHeaders()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p4, :cond_0

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :goto_1
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_1
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$400(IBS)I

    move-result v3

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v2}, La/i;->k()I

    move-result v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v3}, La/i;->k()I

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    :goto_0
    invoke-interface {p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->k()I

    move-result v1

    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v2}, La/i;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    return-void
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v1}, La/i;->k()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, -0x4

    invoke-static {v2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$400(IBS)I

    move-result v2

    invoke-direct {p0, v2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p4, v1, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->k()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-interface {p1, p4, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_4

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->j()S

    move-result v0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v4}, La/i;->k()I

    move-result v4

    packed-switch v0, :pswitch_data_0

    const-string v1, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_0
    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_1
    const/4 v0, 0x4

    :cond_5
    :pswitch_2
    invoke-virtual {v3, v0, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x7

    if-gez v4, :cond_5

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_4
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_6

    const v5, 0xffffff

    if-le v4, v5, :cond_5

    :cond_6
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-interface {p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft10$Reader;->headerTableSizeSetting(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->k()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v0}, La/i;->close()V

    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, La/i;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$300(La/i;)I

    move-result v2

    if-ltz v2, :cond_0

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    :cond_0
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v1}, La/i;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v3}, La/i;->i()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-interface {v4}, La/i;->k()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v0, v4, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, La/i;->g(J)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->client:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft16$Reader;->source:La/i;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$000()La/j;

    move-result-object v1

    invoke-virtual {v1}, La/j;->e()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, La/i;->c(J)La/j;

    move-result-object v0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, La/j;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$000()La/j;

    move-result-object v1

    invoke-virtual {v1, v0}, La/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, La/j;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft16;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
