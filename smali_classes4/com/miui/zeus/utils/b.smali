.class public final Lcom/miui/zeus/utils/b;
.super Ljava/lang/Object;
.source "GlobalHolder.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/os/Handler;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/zeus/utils/b;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/miui/zeus/utils/b;->c()V

    sget-object v0, Lcom/miui/zeus/utils/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/miui/zeus/utils/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/zeus/utils/a/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/miui/zeus/utils/b;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/miui/zeus/utils/b;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/zeus/utils/b;->b:Ljava/lang/ref/WeakReference;

    :cond_1
    sget-object p0, Lcom/miui/zeus/utils/b;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/zeus/utils/b;->d:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/miui/zeus/utils/b;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private static c()V
    .locals 2

    sget-object v0, Lcom/miui/zeus/utils/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GlobalHolder should be init before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
