.class public final Lcom/google/android/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# instance fields
.field private volatile bytesLoaded:J

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

.field private volatile result:Ljava/lang/Object;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-void
.end method

.method public static load(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final load()V
    .locals 4

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
