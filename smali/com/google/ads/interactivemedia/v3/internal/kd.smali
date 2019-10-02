.class public abstract Lcom/google/ads/interactivemedia/v3/internal/kd;
.super Lcom/google/ads/interactivemedia/v3/internal/kc;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/kd$a;
    }
.end annotation


# static fields
.field static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:J

.field private static v:Lcom/google/ads/interactivemedia/v3/internal/kj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;Lcom/google/ads/interactivemedia/v3/internal/ki;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/kc;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;Lcom/google/ads/interactivemedia/v3/internal/ki;)V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->r:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw v0
.end method

.method static a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->s:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/kh;->a([BZ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->s:Ljava/lang/String;

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->s:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;)V
    .locals 3

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/kd;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kj;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/kj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kh;Ljava/security/SecureRandom;)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->v:Lcom/google/ads/interactivemedia/v3/internal/kj;

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->k(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sput-wide p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->u:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->d:Z
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static b()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw v0
.end method

.method static b(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->t:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/kh;->a([BZ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->t:Ljava/lang/String;

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->t:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->v:Lcom/google/ads/interactivemedia/v3/internal/kj;

    invoke-virtual {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj;->a([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/kj$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static c()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw v0
.end method

.method static d()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw v0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->n:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static f(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static g(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static h(Landroid/content/Context;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static i(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method static j(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->q:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw p0
.end method

.method private static k(Landroid/content/Context;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kd$a;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->v:Lcom/google/ads/interactivemedia/v3/internal/kj;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kj;->a(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->v:Lcom/google/ads/interactivemedia/v3/internal/kj;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/kj;->a([BLjava/lang/String;)[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "dex"

    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v4, p0

    :goto_0
    const-string v5, "ads"

    const-string v6, ".jar"

    invoke-static {v5, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v7, v1

    invoke-virtual {v6, v1, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/kj$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v6, v7, v8, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->y()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->o()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->m()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->w()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->u()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->i()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->g()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->e()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v2

    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v1

    move-object/from16 v17, v5

    const/4 v5, 0x0

    :try_start_3
    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->e:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->f:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->g:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v8, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->h:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/util/DisplayMetrics;

    aput-object v5, v4, v2

    invoke-virtual {v9, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->i:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v10, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->j:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v11, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->k:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v12, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->l:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v13, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->m:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v14, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->n:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v15, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->o:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->p:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/kd;->q:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, ".jar"

    const-string v3, ".dex"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    :goto_1
    move-object/from16 v2, v16

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/kj$a; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kd$a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kd$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x19

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V

    sget-wide v3, Lcom/google/ads/interactivemedia/v3/internal/kd;->u:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    sget-wide v4, Lcom/google/ads/interactivemedia/v3/internal/kd;->u:J

    const/4 v6, 0x0

    sub-long/2addr v1, v4

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V

    const/16 v1, 0x17

    sget-wide v2, Lcom/google/ads/interactivemedia/v3/internal/kd;->u:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :catch_2
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V

    const/16 v3, 0x20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    :catch_3
    const/16 v2, 0x21

    :try_start_4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->d()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :catch_4
    const/16 v2, 0x1b

    :try_start_5
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->c:Lcom/google/ads/interactivemedia/v3/internal/kh;

    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :catch_5
    const/16 v2, 0x1d

    :try_start_6
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->c:Lcom/google/ads/interactivemedia/v3/internal/kh;

    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/kh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    :catch_6
    :try_start_7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->h(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x5

    aget v1, v2, v1

    int-to-long v4, v1

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V

    const/4 v1, 0x6

    aget v0, v2, v0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    :catch_7
    :try_start_8
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->i(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_8
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :catch_8
    :try_start_9
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->j(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :catch_9
    const/16 v0, 0x22

    :try_start_a
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_a
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    :catch_a
    const/16 v0, 0x23

    :try_start_b
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_b
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :catch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :catch_1
    const/16 v2, 0x19

    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :catch_2
    :try_start_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->a:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V

    const/16 v3, 0xf

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_3
    :cond_0
    const/16 v0, 0x22

    :try_start_4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_4
    const/16 v0, 0x23

    :try_start_5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(IJ)V
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/internal/kd$a; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
