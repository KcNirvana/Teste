.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesHasher;
.super Ljava/lang/Object;
.source "OpenSubtitlesHasher.java"


# static fields
.field private static final HASH_CHUNK_SIZE:I = 0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeHash(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    :try_start_0
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesHasher;->computeHashForChunk(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const/4 v4, 0x0

    sub-long v2, v0, v2

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v4, p0

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesHasher;->computeHashForChunk(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-string v4, "%016x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-long/2addr v0, v12

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    throw v0
.end method

.method public static computeHash(Ljava/io/InputStream;J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x10000

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x0

    invoke-virtual {v2, v1, p0, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    int-to-long v3, v0

    sub-long v5, p1, v3

    :goto_0
    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    sub-long v7, v5, v3

    invoke-virtual {v2, v7, v8}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v7

    add-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-static {v1, p0, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesHasher;->computeHashForChunk(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v4, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OpenSubtitlesHasher;->computeHashForChunk(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-string v4, "%016x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-long/2addr p1, v2

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, p0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static computeHashForChunk(Ljava/nio/ByteBuffer;)J
    .locals 4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getFileHash(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p0, 0x10000

    const/high16 v2, 0x20000

    :try_start_1
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    sub-int/2addr v3, p0

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v1, v2, p0, p0}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v2}, Lcom/miui/video/framework/utils/CipherUtils;->MD5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-object v1, v0

    :catch_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    return-object v0
.end method
