.class public Lcom/xiaomi/metoknlp/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static i:Lcom/xiaomi/metoknlp/c/n;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Lcom/xiaomi/metoknlp/c/g;

.field private d:I

.field private e:Lcom/xiaomi/metoknlp/c/d;

.field private f:Lcom/xiaomi/metoknlp/c/h;

.field private g:Lcom/xiaomi/metoknlp/c/k;

.field private h:Landroid/content/Context;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    new-instance v0, Lcom/xiaomi/metoknlp/c/d;

    invoke-direct {v0}, Lcom/xiaomi/metoknlp/c/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    new-instance v0, Lcom/xiaomi/metoknlp/c/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/c/b;-><init>(Lcom/xiaomi/metoknlp/c/n;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/c/n;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    return p1
.end method

.method public static a()Lcom/xiaomi/metoknlp/c/n;
    .locals 1

    sget-object v0, Lcom/xiaomi/metoknlp/c/n;->i:Lcom/xiaomi/metoknlp/c/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/metoknlp/c/n;

    invoke-direct {v0}, Lcom/xiaomi/metoknlp/c/n;-><init>()V

    sput-object v0, Lcom/xiaomi/metoknlp/c/n;->i:Lcom/xiaomi/metoknlp/c/n;

    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/c/n;->i:Lcom/xiaomi/metoknlp/c/n;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/c/n;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/c/n;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/c/n;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/c/d;->g(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/c/d;->h(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/d;->a(Ljava/util/List;)Lcom/xiaomi/metoknlp/c/d;

    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/c/n;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/c/n;)Lcom/xiaomi/metoknlp/c/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->g:Lcom/xiaomi/metoknlp/c/k;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/metoknlp/c/n;)Lcom/xiaomi/metoknlp/c/d;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/metoknlp/c/n;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/metoknlp/c/m;->a(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/xiaomi/metoknlp/c/j;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaomi/metoknlp/c/j;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/metoknlp/c/d;->a(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/metoknlp/a/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/metoknlp/c/d;->b(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/metoknlp/c/d;->c(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/d;->f(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/c/d;->e(Ljava/lang/String;)Lcom/xiaomi/metoknlp/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->f:Lcom/xiaomi/metoknlp/c/h;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/c/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/metoknlp/c/d;->a(J)Lcom/xiaomi/metoknlp/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->f:Lcom/xiaomi/metoknlp/c/h;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/c/h;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/metoknlp/c/d;->b(J)Lcom/xiaomi/metoknlp/c/d;

    goto :goto_0
.end method

.method private g()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/c/n;->c()V

    return-void
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/d;->a()Lcom/xiaomi/metoknlp/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    check-cast v0, Lcom/xiaomi/metoknlp/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    new-instance v0, Lcom/xiaomi/metoknlp/c/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/c/k;-><init>(Lcom/xiaomi/metoknlp/c/n;Lcom/xiaomi/metoknlp/c/b;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->g:Lcom/xiaomi/metoknlp/c/k;

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/metoknlp/c/n;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/xiaomi/metoknlp/c/n;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/api/v2/realip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->g:Lcom/xiaomi/metoknlp/c/k;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/xiaomi/metoknlp/c/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/n;->h:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/metoknlp/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/c/h;-><init>(Lcom/xiaomi/metoknlp/c/n;Lcom/xiaomi/metoknlp/c/b;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->f:Lcom/xiaomi/metoknlp/c/h;

    new-instance v0, Lcom/xiaomi/metoknlp/c/g;

    invoke-direct {v0, p1}, Lcom/xiaomi/metoknlp/c/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/g;->b()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->f:Lcom/xiaomi/metoknlp/c/h;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/g;->a(Lcom/xiaomi/metoknlp/c/p;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/g;->c()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/g;->d()V

    iput-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/metoknlp/c/n;->f:Lcom/xiaomi/metoknlp/c/h;

    return-void
.end method

.method c()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/n;->f()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->e:Lcom/xiaomi/metoknlp/c/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/n;->e()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/n;->g()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/n;->i()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/metoknlp/c/n;->d:I

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->g:Lcom/xiaomi/metoknlp/c/k;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/k;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->g:Lcom/xiaomi/metoknlp/c/k;

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/n;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/n;->c:Lcom/xiaomi/metoknlp/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/g;->a()V

    :cond_0
    return-void
.end method
