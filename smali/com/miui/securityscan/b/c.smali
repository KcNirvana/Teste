.class public Lcom/miui/securityscan/b/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private final MODE:I

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/securityscan/b/c;->sInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/securityscan/b/c;->MODE:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic JV(Lcom/miui/securityscan/b/c;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;
    .locals 3

    const-class v1, Lcom/miui/securityscan/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/b/c;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/securityscan/b/c;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/b/c;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/b/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/securityscan/b/c;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/securityscan/b/c;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public JS(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/securityscan/b/e;-><init>(Lcom/miui/securityscan/b/c;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public JT(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/b/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/securityscan/b/d;-><init>(Lcom/miui/securityscan/b/c;Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public JU(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/b/c;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
