.class public Lcom/amap/api/col/el;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/fn$a;


# instance fields
.field private a:Lcom/amap/api/col/em;

.field private b:Lcom/amap/api/col/fn;

.field private c:Lcom/amap/api/col/de;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/em;Lcom/amap/api/col/de;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    new-instance v0, Lcom/amap/api/col/fn;

    new-instance v1, Lcom/amap/api/col/eu;

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    invoke-direct {v1, v2}, Lcom/amap/api/col/eu;-><init>(Lcom/amap/api/col/em;)V

    invoke-direct {v0, v1}, Lcom/amap/api/col/fn;-><init>(Lcom/amap/api/col/ft;)V

    iput-object v0, p0, Lcom/amap/api/col/el;->b:Lcom/amap/api/col/fn;

    iget-object v0, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v0, v0, Lcom/amap/api/col/em;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "clearMarker()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    invoke-virtual {v0}, Lcom/amap/api/col/em;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/amap/api/col/dy;

    iget-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/fa;->c()Lcom/amap/api/col/fa;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/amap/api/col/dy;-><init>(Landroid/content/Context;Lcom/amap/api/col/dx;)V

    new-instance v0, Lcom/amap/api/col/fb$a;

    iget-object v1, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v1, v1, Lcom/amap/api/col/em;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v3, v2, Lcom/amap/api/col/em;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v5, v2, Lcom/amap/api/col/em;->d:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/fb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/fb$a;->a(Ljava/lang/String;)Lcom/amap/api/col/fb$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/fb$a;->a()Lcom/amap/api/col/fb;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v1, v1, Lcom/amap/api/col/em;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v2, v2, Lcom/amap/api/col/em;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v3, v3, Lcom/amap/api/col/em;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3}, Lcom/amap/api/col/fb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/amap/api/col/ev$a;->a(Lcom/amap/api/col/dy;Lcom/amap/api/col/fb;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v1, v1, Lcom/amap/api/col/em;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/el;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    iget-object v2, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v3, v3, Lcom/amap/api/col/em;->d:Ljava/lang/String;

    invoke-static {v0, v6, v1, v2, v3}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Lcom/amap/api/col/dy;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-static {v0, v1}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Lcom/amap/api/col/de;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/amap/api/col/cz;->m(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/col/dy;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v0, v0, Lcom/amap/api/col/em;->b:Ljava/lang/String;

    const-string v2, "used"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/ev$a;->a(Lcom/amap/api/col/dy;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/fb;

    invoke-virtual {v0}, Lcom/amap/api/col/fb;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v2, v2, Lcom/amap/api/col/em;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "dDownLoad"

    const-string v3, "isUsed()"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/amap/api/col/dy;Lcom/amap/api/col/fb;Lcom/amap/api/col/em;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p3, Lcom/amap/api/col/em;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/amap/api/col/em;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/amap/api/col/em;->d:Ljava/lang/String;

    iget-object v4, p3, Lcom/amap/api/col/em;->e:Ljava/lang/String;

    const-string v4, "errorstatus"

    invoke-virtual {p2}, Lcom/amap/api/col/fb;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/col/el;->b(Lcom/amap/api/col/dy;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/amap/api/col/fb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/amap/api/col/fb;

    invoke-virtual {p1, v2, v4}, Lcom/amap/api/col/dy;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v4}, Lcom/amap/api/col/de;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    iget-object v4, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v4, v3}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Lcom/amap/api/col/dy;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-static {v1, v2}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Lcom/amap/api/col/de;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "dDownLoad"

    const-string v3, "processDownloadedFile()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/col/dy;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v2}, Lcom/amap/api/col/de;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v3}, Lcom/amap/api/col/de;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ev;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-static {v0, p1, v1}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Lcom/amap/api/col/dy;Lcom/amap/api/col/de;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-static {v0, v1}, Lcom/amap/api/col/ev;->a(Landroid/content/Context;Lcom/amap/api/col/de;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    new-instance v0, Lcom/amap/api/col/dy;

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/fa;->c()Lcom/amap/api/col/fa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/dy;-><init>(Landroid/content/Context;Lcom/amap/api/col/dx;)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/el;->a(Lcom/amap/api/col/dy;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v1, v1, Lcom/amap/api/col/em;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/col/ev$a;->a(Lcom/amap/api/col/dy;Ljava/lang/String;)Lcom/amap/api/col/fb;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/el;->a(Lcom/amap/api/col/dy;Lcom/amap/api/col/fb;Lcom/amap/api/col/em;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget v1, v1, Lcom/amap/api/col/em;->g:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget v1, v1, Lcom/amap/api/col/em;->f:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/el;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/amap/api/col/fc;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/el;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/amap/api/col/fc;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    invoke-virtual {v0}, Lcom/amap/api/col/em;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/api/col/fc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/amap/api/col/el;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/gc;

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v2}, Lcom/amap/api/col/de;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v3}, Lcom/amap/api/col/de;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/gc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":1}"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/gc;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/col/gd;->a(Lcom/amap/api/col/gc;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/el;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "dDownLoad"

    const-string v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method d()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v1}, Lcom/amap/api/col/de;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v2, v2, Lcom/amap/api/col/em;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v1}, Lcom/amap/api/col/de;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/el;->a:Lcom/amap/api/col/em;

    iget-object v2, v2, Lcom/amap/api/col/em;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method e()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/el;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/el;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/col/el;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/el;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v2}, Lcom/amap/api/col/de;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/ev;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "dDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/el;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gc;

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v2}, Lcom/amap/api/col/de;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/el;->c:Lcom/amap/api/col/de;

    invoke-virtual {v3}, Lcom/amap/api/col/de;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/gc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":0}"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/gc;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/el;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/col/gd;->a(Lcom/amap/api/col/gc;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/el;->b:Lcom/amap/api/col/fn;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/fn;->a(Lcom/amap/api/col/fn$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
