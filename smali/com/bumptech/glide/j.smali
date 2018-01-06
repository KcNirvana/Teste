.class public Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bumptech/glide/j;


# instance fields
.field private final b:Lcom/bumptech/glide/load/c/c;

.field private final c:Lcom/bumptech/glide/load/b/c;

.field private final d:Lcom/bumptech/glide/load/b/a/c;

.field private final e:Lcom/bumptech/glide/load/b/b/i;

.field private final f:Lcom/bumptech/glide/load/a;

.field private final g:Lcom/bumptech/glide/g/b/f;

.field private final h:Lcom/bumptech/glide/load/resource/f/e;

.field private final i:Lcom/bumptech/glide/f/c;

.field private final j:Lcom/bumptech/glide/load/resource/bitmap/e;

.field private final k:Lcom/bumptech/glide/load/resource/e/f;

.field private final l:Lcom/bumptech/glide/load/resource/bitmap/l;

.field private final m:Lcom/bumptech/glide/load/resource/e/f;

.field private final n:Landroid/os/Handler;

.field private final o:Lcom/bumptech/glide/load/b/d/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/c;Lcom/bumptech/glide/load/b/b/i;Lcom/bumptech/glide/load/b/a/c;Landroid/content/Context;Lcom/bumptech/glide/load/a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/g/b/f;

    invoke-direct {v0}, Lcom/bumptech/glide/g/b/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/g/b/f;

    new-instance v0, Lcom/bumptech/glide/load/resource/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/f/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/load/resource/f/e;

    iput-object p1, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/load/b/c;

    iput-object p3, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/load/b/a/c;

    iput-object p2, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/b/b/i;

    iput-object p5, p0, Lcom/bumptech/glide/j;->f:Lcom/bumptech/glide/load/a;

    new-instance v0, Lcom/bumptech/glide/load/c/c;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/load/c/c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->n:Landroid/os/Handler;

    new-instance v0, Lcom/bumptech/glide/load/b/d/a;

    invoke-direct {v0, p2, p3, p5}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/b/i;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/a;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->o:Lcom/bumptech/glide/load/b/d/a;

    new-instance v0, Lcom/bumptech/glide/f/c;

    invoke-direct {v0}, Lcom/bumptech/glide/f/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v0, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/a;)V

    iget-object v1, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/a;)V

    iget-object v2, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V

    iget-object v0, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    const-class v1, Lcom/bumptech/glide/load/c/i;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    new-instance v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-direct {v0, p4, p3}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/c;)V

    iget-object v1, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {v1, v3, v4, v0}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    iget-object v1, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    const-class v3, Lcom/bumptech/glide/load/c/i;

    const-class v4, Lcom/bumptech/glide/load/resource/e/a;

    new-instance v5, Lcom/bumptech/glide/load/resource/e/g;

    invoke-direct {v5, v2, v0, p3}, Lcom/bumptech/glide/load/resource/e/g;-><init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/b/a/c;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    iget-object v0, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/bumptech/glide/load/resource/c/d;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/c/d;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/c/a/a$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/a$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/c$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/c/a/c$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/e$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/c/a/c$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/e$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/c/a/d$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/d$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/f$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/f$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/c/a/e$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/g$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/g$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/h$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/h$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, Lcom/bumptech/glide/load/c/e;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/a$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/a$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/c/b/b$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/b/b$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V

    iget-object v0, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/load/resource/f/e;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/m;

    new-instance v3, Lcom/bumptech/glide/load/resource/f/c;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/bumptech/glide/load/resource/f/c;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)V

    iget-object v0, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/load/resource/f/e;

    const-class v1, Lcom/bumptech/glide/load/resource/e/a;

    const-class v2, Lcom/bumptech/glide/load/resource/b/b;

    new-instance v3, Lcom/bumptech/glide/load/resource/f/a;

    new-instance v4, Lcom/bumptech/glide/load/resource/f/c;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/bumptech/glide/load/resource/f/c;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/c;)V

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/f/a;-><init>(Lcom/bumptech/glide/load/resource/f/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)V

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/bumptech/glide/load/b/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    new-instance v0, Lcom/bumptech/glide/load/resource/e/f;

    iget-object v1, p0, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3, v1}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/g;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/load/resource/e/f;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/b/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->l:Lcom/bumptech/glide/load/resource/bitmap/l;

    new-instance v0, Lcom/bumptech/glide/load/resource/e/f;

    iget-object v1, p0, Lcom/bumptech/glide/j;->l:Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p3, v1}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/g;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->m:Lcom/bumptech/glide/load/resource/e/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 6

    sget-object v0, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/j;

    if-nez v0, :cond_2

    const-class v1, Lcom/bumptech/glide/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/j;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Lcom/bumptech/glide/e/b;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/e/b;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/k;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/a;

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/e/a;->a(Landroid/content/Context;Lcom/bumptech/glide/k;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/bumptech/glide/k;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/j;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/a;

    sget-object v4, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/j;

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/e/a;->a(Landroid/content/Context;Lcom/bumptech/glide/j;)V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/c/o",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/c/o",
            "<TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    const-string v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/j;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-direct {v0}, Lcom/bumptech/glide/j;->j()Lcom/bumptech/glide/load/c/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/c/o;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Lcom/bumptech/glide/m;
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/d/l;->a()Lcom/bumptech/glide/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/l;->a(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/g/b/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/j",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    invoke-interface {p0}, Lcom/bumptech/glide/g/b/j;->a()Lcom/bumptech/glide/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->d()V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/bumptech/glide/g/b/j;->a(Lcom/bumptech/glide/g/c;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/c/o",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/m;
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/d/l;->a()Lcom/bumptech/glide/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/bumptech/glide/load/c/c;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/load/c/c;

    return-object v0
.end method


# virtual methods
.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/g/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/g/b/j",
            "<TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/g/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/g/b/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/g/b/j;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/bumptech/glide/load/b/a/c;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/load/b/a/c;

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<TZ;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/load/resource/f/e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/d;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/b/b/i;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/i;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/load/b/a/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/c/p",
            "<TT;TY;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/load/c/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/p;)Lcom/bumptech/glide/load/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/c/p;->a()V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/f/b",
            "<TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->i:Lcom/bumptech/glide/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/bumptech/glide/load/b/c;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/load/b/c;

    return-object v0
.end method

.method c()Lcom/bumptech/glide/load/resource/bitmap/e;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    return-object v0
.end method

.method d()Lcom/bumptech/glide/load/resource/bitmap/l;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->l:Lcom/bumptech/glide/load/resource/bitmap/l;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/load/resource/e/f;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/load/resource/e/f;

    return-object v0
.end method

.method f()Lcom/bumptech/glide/load/resource/e/f;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Lcom/bumptech/glide/load/resource/e/f;

    return-object v0
.end method

.method g()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->n:Landroid/os/Handler;

    return-object v0
.end method

.method h()Lcom/bumptech/glide/load/a;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/j;->f:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public i()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/b/b/i;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/load/b/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/c;->a()V

    return-void
.end method
