.class public Lcom/facebook/ads/internal/w/e/d;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/AnyThread;
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/w/e/d;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/w/e/d;->c:Ljava/util/Set;

    sget-object v0, Lcom/facebook/ads/internal/w/e/d;->b:Ljava/util/Set;

    const-string v1, "1ww8E0AYsR2oX5lndk2hwp2Uosk=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/w/e/d;->c:Ljava/util/Set;

    const-string v1, "toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/w/e/d;->c:Ljava/util/Set;

    const-string v1, "3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/w/e/d;->c:Ljava/util/Set;

    const-string v1, "B08QtE4yLCdli4rptyqAEczXOeA=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/w/e/d;->c:Ljava/util/Set;

    const-string v1, "XZXI6anZbdKf+taURdnyUH5ipgM=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/v/a/a;
    .locals 2

    new-instance v0, Lcom/facebook/ads/internal/v/a/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/v/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/w/e/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/v/a/a;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/facebook/ads/internal/v/a/a;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/v/a/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/v/a/a;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/internal/w/e/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/v/a/a;Z)V

    invoke-static {}, Lcom/facebook/ads/internal/w/e/d;->a()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/facebook/ads/internal/w/e/d;->c:Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/v/a/a;->b(Ljava/util/Set;)V

    sget-object p0, Lcom/facebook/ads/internal/w/e/d;->b:Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/v/a/a;->a(Ljava/util/Set;)V

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/ads/internal/v/a/a;Z)V
    .locals 2

    invoke-static {}, Lcom/facebook/ads/internal/w/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x57e40

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/v/a/a;->c(I)V

    const v0, 0x1d4c0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/v/a/a;->d(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/v/a/a;->c(I)V

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/v/a/a;->b(I)V

    const-string v0, "user-agent"

    new-instance v1, Lcom/facebook/ads/internal/l/b;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/l/b;-><init>(Landroid/content/Context;)V

    invoke-static {v1, p0, p2}, Lcom/facebook/ads/internal/n/d;->a(Lcom/facebook/ads/internal/l/b;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/facebook/ads/internal/v/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/v/a/a;

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/ads/internal/v/a/a;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/w/e/d;->a(Landroid/content/Context;Z)Lcom/facebook/ads/internal/v/a/a;

    move-result-object p0

    return-object p0
.end method
