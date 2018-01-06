.class public Lcom/amap/api/col/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ck$a;
    }
.end annotation


# static fields
.field public static a:Lcom/amap/api/col/de;

.field private static b:Lcom/amap/api/col/ck;

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Lcom/amap/api/col/ck$a;

.field private e:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/cl;

    const-string v1, "manifestThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/cl;-><init>(Lcom/amap/api/col/ck;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/ck;->e:Landroid/os/HandlerThread;

    sput-object p1, Lcom/amap/api/col/ck;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/col/cc;->a(Z)Lcom/amap/api/col/de;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/ck;->a:Lcom/amap/api/col/de;

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/ck$a;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/ck$a;-><init>(Lcom/amap/api/col/ck;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/ck;->d:Lcom/amap/api/col/ck$a;

    iget-object v0, p0, Lcom/amap/api/col/ck;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ManifestConfig"

    const-string v2, "ManifestConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/amap/api/col/ck;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/ck;)Lcom/amap/api/col/ck$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ck;->d:Lcom/amap/api/col/ck$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/ck;
    .locals 1

    sget-object v0, Lcom/amap/api/col/ck;->b:Lcom/amap/api/col/ck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/ck;

    invoke-direct {v0, p0}, Lcom/amap/api/col/ck;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/ck;->b:Lcom/amap/api/col/ck;

    :cond_0
    sget-object v0, Lcom/amap/api/col/ck;->b:Lcom/amap/api/col/ck;

    return-object v0
.end method
