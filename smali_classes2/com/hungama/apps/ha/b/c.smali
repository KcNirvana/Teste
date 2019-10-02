.class public final Lcom/hungama/apps/ha/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hungama/apps/ha/b/b$a;
.implements Lcom/hungama/apps/ha/e/d;


# instance fields
.field private a:Lcom/hungama/apps/ha/b/a;

.field private b:Lcom/hungama/apps/ha/b/b;

.field private c:Lcom/hungama/apps/ha/b/e;

.field private d:Lcom/hungama/apps/ha/e/j;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hungama/apps/ha/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/apps/ha/b/c;->o:Z

    new-instance v0, Lcom/hungama/apps/ha/b/a;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/hungama/apps/ha/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    new-instance p2, Lcom/hungama/apps/ha/b/b;

    invoke-direct {p2, p1, p0}, Lcom/hungama/apps/ha/b/b;-><init>(Landroid/content/Context;Lcom/hungama/apps/ha/b/b$a;)V

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    new-instance p2, Lcom/hungama/apps/ha/b/e;

    invoke-direct {p2, p1}, Lcom/hungama/apps/ha/b/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->c:Lcom/hungama/apps/ha/b/e;

    new-instance p2, Lcom/hungama/apps/ha/e/j;

    invoke-direct {p2, p1}, Lcom/hungama/apps/ha/e/j;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->d:Lcom/hungama/apps/ha/e/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->k:Ljava/lang/String;

    const-string p1, "HA-1234"

    const-string p2, "HA-GUEST"

    const-string p3, "HA-AUTO"

    invoke-direct {p0, p1, p2, p3}, Lcom/hungama/apps/ha/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->e()V

    iget-object p1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p1}, Lcom/hungama/apps/ha/b/b;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hungama/apps/ha/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/hungama/apps/ha/b/c;->f:I

    return p1
.end method

.method static synthetic a(Lcom/hungama/apps/ha/b/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hungama/apps/ha/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/hungama/apps/ha/b/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/hungama/apps/ha/b/d;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/hungama/apps/ha/b/d;-><init>(Lcom/hungama/apps/ha/e/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/apps/ha/b/c;->d:Lcom/hungama/apps/ha/e/j;

    invoke-virtual {p1, v0}, Lcom/hungama/apps/ha/e/j;->a(Lcom/hungama/apps/ha/e/a;)V
    :try_end_0
    .catch Lcom/hungama/apps/ha/e/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/hungama/apps/ha/b/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hungama/apps/ha/b/c;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/hungama/apps/ha/a/a/e;

    const-string v1, "devices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "did=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v3}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->i:Ljava/lang/String;

    const-string p2, "osv"

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    goto :goto_0

    :cond_0
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->h:Ljava/lang/String;

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result p2

    iput p2, p0, Lcom/hungama/apps/ha/b/c;->f:I

    const-string p2, "vc"

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;I)Lcom/hungama/apps/ha/a/a/e;

    const-string p2, "vn"

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    goto :goto_0

    :cond_1
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->k:Ljava/lang/String;

    const-string v1, "tkn"

    invoke-virtual {v0, v1, p2}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    :cond_2
    :goto_0
    const-string p2, "3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "HA-1234"

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/hungama/apps/ha/b/c;->l:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "HA-GUEST"

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->l:Ljava/lang/String;

    :goto_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/hungama/apps/ha/b/c;->m:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p1, "HA-AUTO"

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->m:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->h:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/hungama/apps/ha/d/a$a;

    invoke-direct {v1}, Lcom/hungama/apps/ha/d/a$a;-><init>()V

    const-string v2, "type"

    invoke-static {v0, v2, p1}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "uid"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "tkn"

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, "app_key"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "service_id"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rdate"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->g:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "udate"

    invoke-virtual {v1}, Lcom/hungama/apps/ha/d/a$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vc"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string p1, "vn"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "did"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ad_id"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mfr"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mdl"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "brd"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os"

    const-string p2, "ANDROID"

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lang"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "den"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "size"

    iget-object p2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {p2}, Lcom/hungama/apps/ha/b/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    invoke-static {}, Lcom/hungama/apps/ha/d/a$a;->a()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    return-object p1
.end method

.method private e()V
    .locals 3

    new-instance v0, Lcom/hungama/apps/ha/b/c$1;

    invoke-direct {v0, p0}, Lcom/hungama/apps/ha/b/c$1;-><init>(Lcom/hungama/apps/ha/b/c;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT osv, rdate, vc, vn, tkn, uid, uname, utype, ad_id FROM devices WHERE did=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hungama/apps/ha/a/b;->a(Ljava/lang/String;Lcom/hungama/apps/ha/a/a/d;)V

    return-void
.end method

.method static synthetic f(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method private f()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->d:Lcom/hungama/apps/ha/e/j;

    new-instance v2, Lcom/hungama/apps/ha/b/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v4}, Lcom/hungama/apps/ha/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/hungama/apps/ha/b/d;-><init>(Lcom/hungama/apps/ha/e/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/hungama/apps/ha/e/j;->a(Lcom/hungama/apps/ha/e/a;)V
    :try_end_0
    .catch Lcom/hungama/apps/ha/e/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Lcom/hungama/apps/ha/a/a/c;

    const-string v1, "devices"

    invoke-direct {v0, v1}, Lcom/hungama/apps/ha/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v1, "did"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;

    move-result-object v0

    const-string v1, "osv"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;

    move-result-object v0

    const-string v1, "vc"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;I)Lcom/hungama/apps/ha/a/a/c;

    move-result-object v0

    const-string v1, "vn"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;

    move-result-object v0

    const-string v1, "rdate"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;

    :cond_0
    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/apps/ha/b/c;->o:Z

    :cond_1
    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Lcom/hungama/apps/ha/a/a/e;

    const-string v1, "devices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "did=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v3}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    move-result-object v0

    const-string v1, "uname"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    move-result-object v0

    const-string v1, "utype"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    move-result-object v0

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    return-void
.end method

.method private i()V
    .locals 4

    new-instance v0, Lcom/hungama/apps/ha/a/a/e;

    const-string v1, "devices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "did=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v3}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/apps/ha/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;

    move-result-object v0

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "service_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rdate"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vc"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "vn"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "did"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mfr"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mdl"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "brd"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    const-string v2, "ANDROID"

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osv"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lang"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "den"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "size"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ts"

    invoke-static {}, Lcom/hungama/apps/ha/d/a$a;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/hungama/apps/ha/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hungama/apps/ha/b/f;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hungama/apps/ha/b/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILcom/hungama/apps/ha/e/b;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/hungama/apps/ha/b/d$a;

    iget-object p1, p2, Lcom/hungama/apps/ha/b/d$a;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->g()V

    iget-object p1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->k()V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/hungama/apps/ha/b/d$a;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/hungama/apps/ha/b/d$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/hungama/apps/ha/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILcom/hungama/apps/ha/e/h;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/hungama/apps/ha/b/f;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hungama/apps/ha/b/c;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/hungama/apps/ha/b/c;->o:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->i()V

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->k()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hungama/apps/ha/b/c;->o:Z

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    const-string v1, "HA-1234"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hungama/apps/ha/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->h()V

    const-string p1, "3"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/hungama/apps/ha/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/hungama/apps/ha/b/c;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/apps/ha/d/a$a;

    invoke-direct {v0}, Lcom/hungama/apps/ha/d/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/hungama/apps/ha/d/a$a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/apps/ha/b/c;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/c;->f()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/hungama/apps/ha/b/c;->f:I

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "2"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hungama/apps/ha/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "service_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aff_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vc"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vn"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->a:Lcom/hungama/apps/ha/b/a;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "did"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osv"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->b:Lcom/hungama/apps/ha/b/b;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nwk"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->c:Lcom/hungama/apps/ha/b/e;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nwk_bnd"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->c:Lcom/hungama/apps/ha/b/e;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nwk_crr"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->c:Lcom/hungama/apps/ha/b/e;

    invoke-virtual {v2}, Lcom/hungama/apps/ha/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uname"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utype"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkv"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "4"

    invoke-direct {p0, v0, p1}, Lcom/hungama/apps/ha/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c;->n:Ljava/lang/String;

    return-object v0
.end method
