.class public Lcom/facebook/ads/internal/u/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/u/c$a;,
        Lcom/facebook/ads/internal/u/c$c;,
        Lcom/facebook/ads/internal/u/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/ads/internal/u/c$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final j:Lcom/facebook/ads/internal/w/b/n;

.field private static final k:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/ads/internal/u/d;

.field private final d:Lcom/facebook/ads/internal/r/a;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/ads/internal/u/c$b;

.field private g:Lcom/facebook/ads/internal/u/b;

.field private h:Lcom/facebook/ads/internal/v/a/a;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/w/b/n;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/b/n;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/u/c;->j:Lcom/facebook/ads/internal/w/b/n;

    sget-object v0, Lcom/facebook/ads/internal/u/c;->j:Lcom/facebook/ads/internal/w/b/n;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/facebook/ads/internal/u/c;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/internal/u/d;->a()Lcom/facebook/ads/internal/u/d;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->c:Lcom/facebook/ads/internal/u/d;

    iget-object p1, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->af(Landroid/content/Context;)Lcom/facebook/ads/internal/r/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->d:Lcom/facebook/ads/internal/r/a;

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "https://graph.facebook.com/network_ads_common"

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "https://graph.%s.facebook.com/network_ads_common"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/u/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/u/c;Lcom/facebook/ads/internal/v/a/a;)Lcom/facebook/ads/internal/v/a/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->h:Lcom/facebook/ads/internal/v/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/u/c;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->e:Ljava/util/Map;

    return-object p1
.end method

.method private a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->f:Lcom/facebook/ads/internal/u/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->f:Lcom/facebook/ads/internal/u/c$b;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/u/c$b;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/u/c;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/u/c;Lcom/facebook/ads/internal/protocol/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/u/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/u/f;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->f:Lcom/facebook/ads/internal/u/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->f:Lcom/facebook/ads/internal/u/c$b;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/u/c$b;->a(Lcom/facebook/ads/internal/u/f;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/u/c;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->c:Lcom/facebook/ads/internal/u/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/u/d;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/u/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/e;->a()Lcom/facebook/ads/internal/m/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/r/a;->a(Ljava/lang/String;)V

    sget-boolean v4, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/r/a;->V(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v4, :cond_0

    const/4 v5, 0x0

    :cond_0
    if-eqz v5, :cond_1

    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "com.facebook.ads.ipc"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Can\'t create ipc marker."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_7

    :try_start_2
    const-string v6, "ipc"

    sget v7, Lcom/facebook/ads/internal/w/h/b;->ac:I

    :goto_2
    invoke-static {v4, v6, v7, v5}, Lcom/facebook/ads/internal/w/h/a;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_4

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_5

    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "com.facebook.ads.ipc"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_4

    :cond_5
    :goto_3
    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Can\'t delete ipc marker."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_7

    :try_start_4
    const-string v6, "ipc"

    sget v7, Lcom/facebook/ads/internal/w/h/b;->ac:I

    goto :goto_2

    :cond_7
    :goto_5
    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/f/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/m/d;->d()J

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/ads/internal/u/c;->g:Lcom/facebook/ads/internal/u/b;

    invoke-static {v4, v5, v6}, Lcom/facebook/ads/internal/u/a;->a(JLcom/facebook/ads/internal/u/b;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    sget-object v5, Lcom/facebook/ads/internal/u/c;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v4, v5, v1}, Lcom/facebook/ads/internal/w/g/a;->a(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/facebook/ads/internal/m/c;)V

    :cond_8
    sget-object v4, Lcom/facebook/ads/internal/u/c$3;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/e;->b()Lcom/facebook/ads/internal/u/e$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/u/e$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    goto/16 :goto_a

    :pswitch_0
    check-cast v0, Lcom/facebook/ads/internal/u/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/g;->g()I

    move-result v0

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    if-eqz v1, :cond_9

    move-object p1, v1

    :cond_9
    invoke-static {v0, p1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1

    :goto_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/r/a;->z(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/ads/internal/u/c;->c()Lcom/facebook/ads/internal/v/a/b;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/p/a;->a(Landroid/content/Context;Lcom/facebook/ads/internal/v/a/b;)V

    :cond_a
    move-object v4, v0

    check-cast v4, Lcom/facebook/ads/internal/u/f;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/d;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/facebook/ads/internal/u/c;->g:Lcom/facebook/ads/internal/u/b;

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/u/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/u/b;)V

    :cond_b
    iget-object p1, p0, Lcom/facebook/ads/internal/u/c;->e:Ljava/util/Map;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/facebook/ads/internal/u/c;->e:Ljava/util/Map;

    const-string v1, "CLIENT_REQUEST_ID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_c
    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_7
    const-string v6, "73q8p304q6q511r89s8os2801s1o9sq1"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_13

    const-string v6, "73q8p304q6q511r89s8os2801s1o9sq1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_d

    const/16 v7, 0x6d

    if-le v6, v7, :cond_e

    :cond_d
    const/16 v7, 0x41

    if-lt v6, v7, :cond_f

    const/16 v7, 0x4d

    if-gt v6, v7, :cond_f

    :cond_e
    add-int/lit8 v6, v6, 0xd

    :goto_8
    int-to-char v6, v6

    goto :goto_9

    :cond_f
    const/16 v7, 0x6e

    if-lt v6, v7, :cond_10

    const/16 v7, 0x7a

    if-le v6, v7, :cond_11

    :cond_10
    const/16 v7, 0x4e

    if-lt v6, v7, :cond_12

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_12

    :cond_11
    add-int/lit8 v6, v6, -0xd

    goto :goto_8

    :cond_12
    :goto_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "iso-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v5, v3, v7}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/internal/w/b/i;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    const-string v6, "network"

    sget v7, Lcom/facebook/ads/internal/w/h/b;->t:I

    new-instance v8, Lcom/facebook/ads/internal/protocol/h;

    invoke-direct {v8}, Lcom/facebook/ads/internal/protocol/h;-><init>()V

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "iso-8859-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v1, v3, v6}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/i;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/ads/internal/k/a;

    invoke-direct {v3, p1, v1}, Lcom/facebook/ads/internal/k/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/facebook/ads/internal/k/e;->a(Lcom/facebook/ads/internal/k/d;Landroid/content/Context;)V

    :cond_15
    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    new-instance p1, Lcom/facebook/ads/internal/q/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/facebook/ads/internal/q/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/q/a;->a()V

    :cond_16
    invoke-direct {p0, v4}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/u/f;)V

    goto :goto_b

    :goto_a
    invoke-static {v0, p1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception p1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b()Lcom/facebook/ads/internal/u/c$a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/u/c;->a:Lcom/facebook/ads/internal/u/c$a;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/u/c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/u/c;->e:Ljava/util/Map;

    return-object p0
.end method

.method private c()Lcom/facebook/ads/internal/v/a/b;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/u/c$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/u/c$2;-><init>(Lcom/facebook/ads/internal/u/c;)V

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/u/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/u/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/u/c;)Lcom/facebook/ads/internal/v/a/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/u/c;->h:Lcom/facebook/ads/internal/v/a/a;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/u/c;)Lcom/facebook/ads/internal/v/a/b;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/u/c;->c()Lcom/facebook/ads/internal/v/a/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/u/c;)Lcom/facebook/ads/internal/u/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/u/c;->g:Lcom/facebook/ads/internal/u/b;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/u/c;)Lcom/facebook/ads/internal/u/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/u/c;->c:Lcom/facebook/ads/internal/u/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->h:Lcom/facebook/ads/internal/v/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->h:Lcom/facebook/ads/internal/v/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/v/a/a;->c(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->h:Lcom/facebook/ads/internal/v/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/v/a/a;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/u/c;->h:Lcom/facebook/ads/internal/v/a/a;

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/u/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/u/b;Z)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/u/b;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/u/c;->a()V

    if-nez p2, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/u/c;->a:Lcom/facebook/ads/internal/u/c$a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/u/c;->a:Lcom/facebook/ads/internal/u/c$a;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/internal/u/c$a;->a(Lcom/facebook/ads/internal/u/c;Lcom/facebook/ads/internal/u/b;)Lcom/facebook/ads/internal/u/c$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/facebook/ads/internal/u/c$c;->a:Lcom/facebook/ads/internal/u/f;

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/facebook/ads/internal/u/c$c;->a:Lcom/facebook/ads/internal/u/f;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/u/f;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/internal/u/c$c;->b:Lcom/facebook/ads/internal/protocol/a;

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/facebook/ads/internal/u/c$c;->b:Lcom/facebook/ads/internal/protocol/a;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/u;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/w/b/u$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/w/b/u$a;->b:Lcom/facebook/ads/internal/w/b/u$a;

    if-ne v0, v1, :cond_2

    new-instance p1, Lcom/facebook/ads/internal/protocol/a;

    sget-object p2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v0, "No network connection"

    invoke-direct {p1, p2, v0}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->g:Lcom/facebook/ads/internal/u/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/u/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/u/a;->a(Lcom/facebook/ads/internal/u/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/facebook/ads/internal/u/a;->c(Lcom/facebook/ads/internal/u/b;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p1, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/u/c;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/facebook/ads/internal/u/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/internal/u/c$1;-><init>(Lcom/facebook/ads/internal/u/c;Lcom/facebook/ads/internal/u/b;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/u/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/u/c;->f:Lcom/facebook/ads/internal/u/c$b;

    return-void
.end method
