.class public Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TimeUtils;->ONE_SECOND_IN_MS:I

    sput v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$1;

    const-string v1, "SharedPreferencesWrapper"

    const-string v2, "Sync write exception"

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$1;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->d:Ljava/lang/Runnable;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->b:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask<",
            "TV;>;TV;)TV;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    sget v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SharedPreferencesWrapper"

    const-string v1, "getCommonReturnValue exception"

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$9;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$8;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$8;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$7;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$6;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;F)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$4;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$5;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$2;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper$3;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->a()V

    return-void
.end method
