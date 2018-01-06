.class public Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/m$d;,
        Lcom/bumptech/glide/m$c;,
        Lcom/bumptech/glide/m$b;,
        Lcom/bumptech/glide/m$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/d/h;

.field private final c:Lcom/bumptech/glide/d/m;

.field private final d:Lcom/bumptech/glide/d/n;

.field private final e:Lcom/bumptech/glide/j;

.field private final f:Lcom/bumptech/glide/m$c;

.field private g:Lcom/bumptech/glide/m$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;)V
    .locals 6

    new-instance v4, Lcom/bumptech/glide/d/n;

    invoke-direct {v4}, Lcom/bumptech/glide/d/n;-><init>()V

    new-instance v5, Lcom/bumptech/glide/d/d;

    invoke-direct {v5}, Lcom/bumptech/glide/d/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/m;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/d/h;

    iput-object p3, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/d/m;

    iput-object p4, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/d/n;

    invoke-static {p1}, Lcom/bumptech/glide/j;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/j;

    new-instance v0, Lcom/bumptech/glide/m$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/m$c;-><init>(Lcom/bumptech/glide/m;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/m$c;

    new-instance v0, Lcom/bumptech/glide/m$d;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/m$d;-><init>(Lcom/bumptech/glide/d/n;)V

    invoke-virtual {p5, p1, v0}, Lcom/bumptech/glide/d/d;->a(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)Lcom/bumptech/glide/d/c;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/i/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/n;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/d/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/d/h;->a(Lcom/bumptech/glide/d/i;)V

    return-void

    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/d/h;->a(Lcom/bumptech/glide/d/i;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/bumptech/glide/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/d",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/c/o;

    move-result-object v3

    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/m$c;

    new-instance v0, Lcom/bumptech/glide/d;

    iget-object v4, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/j;

    iget-object v6, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/d/n;

    iget-object v7, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/d/h;

    iget-object v8, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/m$c;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/d;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Landroid/content/Context;Lcom/bumptech/glide/j;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/m$c;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/m$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/m;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/j;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/d/n;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/d/n;

    return-object v0
.end method

.method static synthetic d(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/d/h;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/d/h;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/m$c;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/m$c;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/m$a;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/m$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/m;->g()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;)Lcom/bumptech/glide/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/m$b",
            "<TA;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/m$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/m$b;-><init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->i()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->b()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/m;->c()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/m;->b()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->c()V

    return-void
.end method

.method public g()Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    return-object v0
.end method
