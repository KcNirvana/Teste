.class abstract Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;
.super Ljava/lang/Object;
.source "AbstractPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/lindstrom/m3u8/model/Playlist;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$writePlaylistAsString$0(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "#EXT-X-VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method abstract build(Ljava/lang/Object;)Lio/lindstrom/m3u8/model/Playlist;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract newBuilder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract onTag(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation
.end method

.method abstract onURI(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation
.end method

.method public readPlaylist(Ljava/io/BufferedReader;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    new-instance v0, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser$1;

    invoke-direct {v0, p0, p1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser$1;-><init>(Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;Ljava/io/BufferedReader;)V

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->readPlaylist(Ljava/util/Iterator;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object p1

    return-object p1
.end method

.method public readPlaylist(Ljava/io/InputStream;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->readPlaylist(Ljava/io/BufferedReader;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw p1
.end method

.method public readPlaylist(Ljava/lang/String;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->readPlaylist(Ljava/util/Iterator;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object p1

    return-object p1
.end method

.method public readPlaylist(Ljava/nio/file/Path;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->readPlaylist(Ljava/io/BufferedReader;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    :goto_1
    throw v0
.end method

.method public readPlaylist(Ljava/util/Iterator;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#EXTM3U"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->newBuilder()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#EXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-lez v3, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    const-string v2, ""

    :goto_3
    invoke-virtual {p0, v1, v4, v2, p1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->onTag(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V

    goto :goto_1

    :cond_6
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1, v2}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->onURI(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->build(Ljava/lang/Object;)Lio/lindstrom/m3u8/model/Playlist;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    const-string v0, "Invalid playlist. Expected #EXTM3U."

    invoke-direct {p1, v0}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract write(Lio/lindstrom/m3u8/model/Playlist;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation
.end method

.method public writePlaylistAsByteBuffer(Lio/lindstrom/m3u8/model/Playlist;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->writePlaylistAsBytes(Lio/lindstrom/m3u8/model/Playlist;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public writePlaylistAsBytes(Lio/lindstrom/m3u8/model/Playlist;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->writePlaylistAsString(Lio/lindstrom/m3u8/model/Playlist;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public writePlaylistAsString(Lio/lindstrom/m3u8/model/Playlist;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#EXTM3U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/Playlist;->version()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lio/lindstrom/m3u8/parser/-$$Lambda$AbstractPlaylistParser$Cn6uh8obsDJHSHk3REk9aCtxjYE;

    invoke-direct {v3, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AbstractPlaylistParser$Cn6uh8obsDJHSHk3REk9aCtxjYE;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/Playlist;->independentSegments()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;->write(Lio/lindstrom/m3u8/model/Playlist;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
