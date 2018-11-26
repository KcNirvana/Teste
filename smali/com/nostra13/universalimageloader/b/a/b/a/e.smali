.class public final Lcom/nostra13/universalimageloader/b/a/b/a/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bmJ:Z

.field private final bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

.field private bmL:Z

.field private final bmM:[Z

.field final synthetic bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/g;)V
    .locals 1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {p2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJZ(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmM:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJD(Lcom/nostra13/universalimageloader/b/a/b/a/c;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/b/a/b/a/e;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/g;)V

    return-void
.end method

.method static synthetic bJO(Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

    return-object v0
.end method

.method static synthetic bJP(Lcom/nostra13/universalimageloader/b/a/b/a/e;)[Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmM:[Z

    return-object v0
.end method

.method static synthetic bJQ(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmL:Z

    return p1
.end method


# virtual methods
.method public bJL(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJZ(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmM:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJS(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    new-instance v2, Lcom/nostra13/universalimageloader/b/a/b/a/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/nostra13/universalimageloader/b/a/b/a/f;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/e;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/a/b/a/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJB(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->-get0()Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public bJM()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJG(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmK:Lcom/nostra13/universalimageloader/b/a/b/a/g;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->remove(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmJ:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0, p0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJG(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)V

    goto :goto_0
.end method

.method public bJN()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bmN:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJG(Lcom/nostra13/universalimageloader/b/a/b/a/c;Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)V

    return-void
.end method
