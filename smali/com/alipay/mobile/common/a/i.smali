.class public final Lcom/alipay/mobile/common/a/i;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/c;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/alipay/mobile/common/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/a/i;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/a/i;->b:Lcom/alipay/mobile/common/a/i;

    if-nez v0, :cond_1

    sget-object v1, Lcom/alipay/mobile/common/a/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/a/i;->b:Lcom/alipay/mobile/common/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/a/i;

    invoke-direct {v0}, Lcom/alipay/mobile/common/a/i;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/a/i;->b:Lcom/alipay/mobile/common/a/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/a/i;->b:Lcom/alipay/mobile/common/a/i;

    invoke-static {v0}, Lcom/alipay/mobile/common/Sdk$a;->a(Lcom/alipay/mobile/common/c;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/a/j;",
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/alipay/mobile/common/common/Callback$b;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/a/e;->a(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;

    move-result-object v0

    return-object v0
.end method
