.class final Lcom/nostra13/universalimageloader/b/a/b/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final bmn:Ljava/util/regex/Pattern;

.field private static final bmo:Ljava/io/OutputStream;


# instance fields
.field private bmA:J

.field private bmB:J

.field private bmC:I

.field private final bmD:I

.field private final bmp:I

.field private final bmq:Ljava/util/concurrent/Callable;

.field private final bmr:Ljava/io/File;

.field final bms:Ljava/util/concurrent/ThreadPoolExecutor;

.field private bmt:I

.field private final bmu:Ljava/io/File;

.field private final bmv:Ljava/io/File;

.field private final bmw:Ljava/io/File;

.field private bmx:Ljava/io/Writer;

.field private final bmy:Ljava/util/LinkedHashMap;

.field private bmz:I

.field private size:J


# direct methods
.method static synthetic -get0()Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmo:Ljava/io/OutputStream;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmn:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/j;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/j;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmo:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJILjava/io/File;)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    iput v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmB:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bms:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/k;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/b/a/b/a/k;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmq:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmr:Ljava/io/File;

    iput p2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmp:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmw:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmv:Ljava/io/File;

    iput p3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    iput-wide p4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmA:J

    iput p6, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmz:I

    return-void
.end method

.method private bJA(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmn:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic bJB(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmr:Ljava/io/File;

    return-object v0
.end method

.method static synthetic bJC(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic bJD(Lcom/nostra13/universalimageloader/b/a/b/a/c;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    return v0
.end method

.method static synthetic bJE(Lcom/nostra13/universalimageloader/b/a/b/a/c;I)I
    .locals 0

    iput p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    return p1
.end method

.method static synthetic bJF(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJs()Z

    move-result v0

    return v0
.end method

.method static synthetic bJG(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJp(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)V

    return-void
.end method

.method static synthetic bJH(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJw()V

    return-void
.end method

.method static synthetic bJI(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJy()V

    return-void
.end method

.method static synthetic bJJ(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJz()V

    return-void
.end method

.method public static bJm(Ljava/io/File;IIJILjava/io/File;)Lcom/nostra13/universalimageloader/b/a/b/a/c;
    .locals 9

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxFileCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_0
    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/b/a/b/a/c;-><init>(Ljava/io/File;IIJILjava/io/File;)V

    iget-object v1, v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJu()V

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJt()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/nostra13/universalimageloader/b/a/b/a/h;->bmU:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    invoke-static {v0, v1, v3}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJx(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->delete()V

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/b/a/b/a/c;-><init>(Ljava/io/File;IIJILjava/io/File;)V

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJw()V

    return-object v0
.end method

.method private bJo()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private declared-synchronized bJp(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)V
    .locals 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJO(Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/g;

    move-result-object v2

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v1

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_3

    :try_start_1
    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJZ(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v1, v3, :cond_3

    invoke-static {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJP(Lcom/nostra13/universalimageloader/b/a/b/a/e;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJN()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJS(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJN()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_2
    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v0, v1, :cond_6

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJS(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJR(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJq(Ljava/io/File;)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKb(Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJZ(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKc(Lcom/nostra13/universalimageloader/b/a/b/a/g;Z)Z

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    iget-wide v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmB:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmB:J

    invoke-static {v2, v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKd(Lcom/nostra13/universalimageloader/b/a/b/a/g;J)J

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    iget-wide v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmA:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmz:I

    if-le v0, v1, :cond_b

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bms:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmq:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4
.end method

.method private static bJq(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private declared-synchronized bJr(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/b/a/b/a/e;
    .locals 6

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJo()V

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKa(Lcom/nostra13/universalimageloader/b/a/b/a/g;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit p0

    return-object v4

    :cond_1
    if-nez v0, :cond_3

    :try_start_1
    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/b/a/b/a/g;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v1, Lcom/nostra13/universalimageloader/b/a/b/a/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/e;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)V

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKb(Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bJs()Z
    .locals 3

    const/16 v2, 0x7d0

    const/4 v0, 0x0

    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private bJt()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmw:Ljava/io/File;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJq(Ljava/io/File;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v1, v4, :cond_0

    iget-wide v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    iget v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0, v8}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKb(Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move v1, v2

    :goto_2
    iget v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJR(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJq(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJS(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJq(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private bJu()V
    .locals 8

    new-instance v1, Lcom/nostra13/universalimageloader/b/a/b/a/b;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/nostra13/universalimageloader/b/a/b/a/h;->bmU:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget v6, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmp:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/h;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJv(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/h;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private bJv(Ljava/lang/String;)V
    .locals 7

    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-direct {v0, p0, v1, v6}, Lcom/nostra13/universalimageloader/b/a/b/a/g;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/b/a/b/a/g;)V

    iget-object v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v3, v5, :cond_5

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKc(Lcom/nostra13/universalimageloader/b/a/b/a/g;Z)Z

    invoke-static {v0, v6}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKb(Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKe(Lcom/nostra13/universalimageloader/b/a/b/a/g;[Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_6

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_6

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/nostra13/universalimageloader/b/a/b/a/e;

    invoke-direct {v1, p0, v0, v6}, Lcom/nostra13/universalimageloader/b/a/b/a/e;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)V

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKb(Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    goto :goto_1

    :cond_6
    if-ne v3, v5, :cond_7

    const-string/jumbo v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_7

    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private declared-synchronized bJw()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmw:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/nostra13/universalimageloader/b/a/b/a/h;->bmU:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmp:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmv:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJx(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmw:Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJx(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmv:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmu:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/nostra13/universalimageloader/b/a/b/a/h;->bmU:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method private static bJx(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJq(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private bJy()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmz:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bJz()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    iget-wide v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmA:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bJn(Ljava/lang/String;)Lcom/nostra13/universalimageloader/b/a/b/a/e;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJr(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJN()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJz()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJy()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public delete()V
    .locals 1

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->close()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmr:Ljava/io/File;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/h;->bKf(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/nostra13/universalimageloader/b/a/b/a/d;
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJo()V

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v5

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJZ(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_2
    iget v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    new-array v6, v2, [Ljava/io/File;

    iget v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    new-array v7, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v1

    :goto_0
    :try_start_3
    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJR(I)Ljava/io/File;

    move-result-object v3

    aput-object v3, v6, v2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v7, v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    :try_start_4
    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v0, v1, :cond_2

    aget-object v1, v7, v0

    if-eqz v1, :cond_2

    aget-object v1, v7, v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/h;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v5

    :cond_3
    :try_start_5
    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJs()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bms:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmq:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_4
    new-instance v1, Lcom/nostra13/universalimageloader/b/a/b/a/d;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bKa(Lcom/nostra13/universalimageloader/b/a/b/a/g;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/b/a/b/a/d;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/b/a/b/a/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJo()V

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/b/a/b/a/g;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->size:J

    iget v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmt:I

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmD:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJR(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmC:I

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmx:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJs()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bms:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bmq:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method
