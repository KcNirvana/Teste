.class public Lcom/alipay/birdnest/api/BirdNestEngine;
.super Ljava/lang/Object;
.source "BirdNestEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/birdnest/api/BirdNestEngine$g;,
        Lcom/alipay/birdnest/api/BirdNestEngine$a;,
        Lcom/alipay/birdnest/api/BirdNestEngine$f;,
        Lcom/alipay/birdnest/api/BirdNestEngine$d;,
        Lcom/alipay/birdnest/api/BirdNestEngine$i;,
        Lcom/alipay/birdnest/api/BirdNestEngine$b;,
        Lcom/alipay/birdnest/api/BirdNestEngine$e;,
        Lcom/alipay/birdnest/api/BirdNestEngine$h;,
        Lcom/alipay/birdnest/api/BirdNestEngine$c;,
        Lcom/alipay/birdnest/api/BirdNestEngine$k;,
        Lcom/alipay/birdnest/api/BirdNestEngine$l;,
        Lcom/alipay/birdnest/api/BirdNestEngine$j;,
        Lcom/alipay/birdnest/api/BirdNestEngine$TemplateStatus;
    }
.end annotation


# static fields
.field private static d:Z

.field private static e:Z


# instance fields
.field a:Lcom/alipay/birdnest/api/BirdNestEngine$a;

.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/android/app/template/FBContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/app/ctemplate/a/d;

.field private g:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

.field private h:Lcom/alipay/birdnest/a/b;

.field private i:I

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Z

.field private l:Lcom/alipay/birdnest/api/BirdNestEngine$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/birdnest/api/BirdNestEngine;->e:Z

    return-void
.end method

.method protected constructor <init>(Lcom/alipay/birdnest/api/BirdNestEngine$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->k:Z

    new-instance v0, Lcom/alipay/birdnest/api/a;

    invoke-direct {v0, p0}, Lcom/alipay/birdnest/api/a;-><init>(Lcom/alipay/birdnest/api/BirdNestEngine;)V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    iput-object p1, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->a:Lcom/alipay/birdnest/api/BirdNestEngine$a;

    new-instance v0, Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ctemplate/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->f:Lcom/alipay/android/app/ctemplate/a/d;

    new-instance v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->g:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    new-instance v0, Lcom/alipay/birdnest/a/b;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->h:Lcom/alipay/birdnest/a/b;

    invoke-virtual {p1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->k:Z

    new-instance v0, Lcom/alipay/birdnest/api/b;

    invoke-direct {v0, p0}, Lcom/alipay/birdnest/api/b;-><init>(Lcom/alipay/birdnest/api/BirdNestEngine;)V

    sput-object v0, Lcom/alipay/birdnest/a/e;->a:Lcom/alipay/birdnest/api/d;

    return-void
.end method

.method public static a(Lcom/alipay/birdnest/api/BirdNestEngine$a;)Lcom/alipay/birdnest/api/BirdNestEngine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-boolean v0, Lcom/alipay/birdnest/api/BirdNestEngine;->d:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->e()Lcom/alipay/birdnest/api/BirdNestEngine$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->d()Lcom/alipay/birdnest/api/BirdNestEngine$j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->h()Lcom/alipay/birdnest/api/BirdNestEngine$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The config is invalid("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_1

    const-string/jumbo v0, "Null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-direct {v0, p0}, Lcom/alipay/birdnest/api/BirdNestEngine;-><init>(Lcom/alipay/birdnest/api/BirdNestEngine$a;)V

    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v1

    const-string/jumbo v2, "alipay_msp_tag_view_holder"

    invoke-interface {v1, v2}, Lcom/alipay/birdnest/api/BirdNestEngine$e;->getUniqueResId(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine;->i:I

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "5.1.3"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/alipay/birdnest/a/i;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/flybird/FBDocumentAssistor;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/birdnest/api/BirdNestEngine;->d:Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/android/app/template/FBContext;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    :cond_0
    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/alipay/birdnest/api/BirdNestEngine$g;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    :cond_1
    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_1
    iget-object v1, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->f:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BirdNestEngine"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/alipay/birdnest/api/BirdNestEngine$g;)Lcom/alipay/android/app/template/FBContext;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "{}"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    const/4 v0, 0x1

    move-object v3, v1

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->c:Lcom/alipay/android/app/template/FBResourceClient$Type;

    sget-object v4, Lcom/alipay/android/app/template/FBResourceClient$Type;->MAIN_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    if-ne v0, v4, :cond_1

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    const-string/jumbo v4, "indexUrl"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    sget-object v5, Lcom/alipay/android/app/template/FBResourceClient$Type;->MAIN_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    invoke-interface {v4, v0, v5}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flybird/FBDocumentAssistor;->extractDataFromTplStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    iput-object v3, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    const/16 v1, 0x15

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v3, v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Lcom/alipay/birdnest/api/BirdNestEngine$g;Ljava/lang/String;I)Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    return-object v0

    :cond_2
    iput-object v3, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    const/16 v1, 0x16

    goto :goto_1

    :cond_3
    move v1, v2

    move-object v3, v0

    goto :goto_0
.end method

.method public a(Lcom/alipay/birdnest/api/BirdNestEngine$g;Ljava/lang/String;I)Lcom/alipay/android/app/template/FBContext;
    .locals 11

    const/16 v10, 0x7b

    const/16 v9, 0x3c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->a:Lcom/alipay/birdnest/api/BirdNestEngine;

    iget-boolean v6, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->k:Z

    if-eqz v6, :cond_0

    const-string/jumbo v0, "generateFBContext"

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "{}"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_1
    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The first argument tid should not be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    if-eqz v6, :cond_3

    :try_start_0
    const-string/jumbo v0, "generateFBContext-getTemplate"

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->y:Landroid/content/res/Resources;

    if-eqz v0, :cond_18

    iget-object v5, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->y:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->f:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v0, v1, v5}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    iget-object v7, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    if-eqz v7, :cond_4

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->f:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v0, v1, v5}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    :cond_4
    if-eqz v6, :cond_5

    const-string/jumbo v7, "generateFBContext-getTemplate"

    const-string/jumbo v8, "getTemplate done"

    invoke-static {v7, v8}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object p2, v0, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    :try_start_1
    iput-object p2, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    move p3, v0

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "template ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\'s content is empty!!!, tplSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "template ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\'s content is empty!!!, tplSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v5, :cond_7

    const/16 v0, 0x1f

    goto :goto_1

    :cond_7
    const/16 v0, 0x20

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    const-string/jumbo v5, "BirdNestEngine"

    invoke-static {v5, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v10, v0, :cond_9

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v9, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "template ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "]\'s content is invalid!!!, tplContent: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", tplSource: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/android/app/template/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object p2, v0

    move v0, v3

    :goto_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v10, v5, :cond_9

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v9, v5, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "template ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\'s content is invalid!!!, tplContent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tplSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", base64Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    const-string/jumbo v5, "BirdNestEngine"

    invoke-static {v5, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    const-string/jumbo v0, "generateFBContext"

    const-string/jumbo v5, "step 0 done"

    invoke-static {v0, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz v6, :cond_b

    const-string/jumbo v0, "flybird generateView"

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "{}"

    iput-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Lcom/alipay/birdnest/api/BirdNestEngine$g;Ljava/lang/String;)V

    :cond_d
    if-eqz v6, :cond_e

    const-string/jumbo v0, "generateFBContext"

    const-string/jumbo v5, "step 1 done"

    invoke-static {v0, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->q:Lcom/alipay/android/app/template/JsPluginFactory;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/alipay/android/app/template/JSPluginManager;->getInstanse()Lcom/alipay/android/app/template/JSPluginManager;

    move-result-object v0

    iget-object v5, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->q:Lcom/alipay/android/app/template/JsPluginFactory;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/template/JSPluginManager;->addJsPluginFactory(Lcom/alipay/android/app/template/JsPluginFactory;)V

    :cond_f
    if-eqz v6, :cond_10

    const-string/jumbo v0, "generateFBContext"

    const-string/jumbo v5, "step 2 done"

    invoke-static {v0, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iput-boolean v3, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iput-object p2, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    :cond_11
    new-instance v3, Lcom/flybird/FBDocument;

    invoke-direct {v3, p1}, Lcom/flybird/FBDocument;-><init>(Lcom/alipay/birdnest/api/BirdNestEngine$g;)V

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v5, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Lcom/flybird/FBDocument;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_12
    if-eqz v6, :cond_13

    const-string/jumbo v0, "generateFBContext"

    const-string/jumbo v5, "step 3(apply app params) done"

    invoke-static {v0, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-virtual {v3, v0}, Lcom/flybird/FBDocument;->setTemplateKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->t:Lcom/alipay/android/app/template/TemplatePasswordService;

    invoke-virtual {v3, v0}, Lcom/flybird/FBDocument;->setTemplatePasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)V

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->p:Lcom/alipay/android/app/template/FBPluginFactory;

    invoke-virtual {v3, v0}, Lcom/flybird/FBDocument;->setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)V

    iget v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->j:I

    invoke-virtual {v3, v0}, Lcom/flybird/FBDocument;->setActionBarHeight(I)V

    :try_start_3
    invoke-virtual {v3}, Lcom/flybird/FBDocument;->loadTemplate()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v3}, Lcom/flybird/FBDocument;->getView()Landroid/view/View;

    move-result-object v0

    iget v5, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->i:I

    invoke-virtual {v3}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v6, :cond_14

    const-string/jumbo v0, "generateFBContext"

    const-string/jumbo v5, "step 4(loadTemplate) done"

    invoke-static {v0, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    invoke-direct {p0, v0, v3}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Landroid/content/Context;Lcom/alipay/android/app/template/FBContext;)V

    if-eqz v6, :cond_15

    const-string/jumbo v0, "flybird generateView"

    const-string/jumbo v5, "generateView done"

    invoke-static {v0, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-boolean v0, v3, Lcom/flybird/FBDocument;->mAvailable:Z

    if-nez v0, :cond_16

    const-string/jumbo v0, "ModernBirdNestEngine-generateFBContext"

    const-string/jumbo v5, "the document is not available!"

    invoke-static {v0, v5, v2, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_16
    sget-boolean v0, Lcom/alipay/birdnest/api/BirdNestEngine;->e:Z

    if-nez v0, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tpl_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "consume_time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sput-boolean v4, Lcom/alipay/birdnest/api/BirdNestEngine;->e:Z

    :cond_17
    return-object v3

    :catch_2
    move-exception v0

    const-string/jumbo v1, "DynamicTemplateServiceImpl-buildFBContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "for tplId:  failed, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v0

    :catch_3
    move-exception v0

    const-string/jumbo v3, "DynamicTemplateServiceImpl-buildFBContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "for tplId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " failed, reason: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v0

    :catch_4
    move-exception v5

    move p3, v0

    move-object v0, v5

    goto/16 :goto_3

    :cond_18
    move-object v0, v2

    move-object v5, v2

    goto/16 :goto_0

    :cond_19
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public a(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->f:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/ctemplate/a/d;->b(Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alipay/android/app/template/FBContext;

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/alipay/android/app/template/FBContext;->destroy(Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/birdnest/api/BirdNestEngine;->c()Lcom/alipay/birdnest/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/b;->a(I)V

    return-void
.end method

.method public b()Lcom/alipay/birdnest/api/BirdNestEngine$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->a:Lcom/alipay/birdnest/api/BirdNestEngine$a;

    return-object v0
.end method

.method public c()Lcom/alipay/birdnest/a/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->h:Lcom/alipay/birdnest/a/b;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->j:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->j:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine;->i:I

    return v0
.end method
