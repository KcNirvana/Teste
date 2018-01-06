.class public abstract Lcom/xiaomi/mistatistic/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->a:Z

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->b:Z

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final a()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(IJ)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval should be set between 1 minutes and 1 day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/as;->a()Lcom/xiaomi/mistatistic/sdk/a/as;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(IJ)V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Ljava/lang/String;JI)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a/a;->c()V

    goto :goto_0
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ak;->a()Lcom/xiaomi/mistatistic/sdk/a/ak;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ap;->a()Lcom/xiaomi/mistatistic/sdk/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/a/ba;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MI_STAT"

    const-string v1, "ABTest is NOT allow to register in background running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->b:Z

    const-string v0, "MI_STAT"

    const-string v1, "ABTest register success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ak;->a()Lcom/xiaomi/mistatistic/sdk/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ap;->a()Lcom/xiaomi/mistatistic/sdk/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->f()V

    :cond_0
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing sdk error, reason: context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "MI_STAT"

    const-string v1, "initialize %s, %s, %s, %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appID or appKey is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p3, "mistats_default"

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/q;->a()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/as;->a()Lcom/xiaomi/mistatistic/sdk/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/as;->b()V

    sput-boolean v5, Lcom/xiaomi/mistatistic/sdk/e;->a:Z

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->a()Z

    :cond_4
    return-void

    :cond_5
    move-object p0, v0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "default_category"

    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/g;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a/a;->c()V

    return-void

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->d()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default_category"

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a/a;->c()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/h;->a(Z)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/h;->a(I)V

    return-void

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mistat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/h;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/h;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static e()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->b:Z

    if-nez v0, :cond_0

    const-string v0, "ABTEST - ABTest  is not registed, do you forget to call ABTestRegister when application started?"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->d(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->b:Z

    return v0
.end method
