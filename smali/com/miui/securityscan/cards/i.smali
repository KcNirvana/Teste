.class public Lcom/miui/securityscan/cards/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Bz:Lcom/miui/securityscan/cards/i;


# instance fields
.field private Bx:Ljava/util/ArrayList;

.field private By:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/securityscan/cards/i;->Bz:Lcom/miui/securityscan/cards/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/cards/i;->By:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/cards/i;->Bx:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/securityscan/cards/j;

    invoke-direct {v1, p0, v3}, Lcom/miui/securityscan/cards/j;-><init>(Lcom/miui/securityscan/cards/i;Lcom/miui/securityscan/cards/j;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    invoke-virtual {v0}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/miui/securityscan/cards/i;->By:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Dm(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/cards/i;->Bx:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/k;

    invoke-interface {v0, p1}, Lcom/miui/securityscan/cards/k;->eh(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic Dn(Lcom/miui/securityscan/cards/i;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/i;->By:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Do(Lcom/miui/securityscan/cards/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/cards/i;->Dm(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;
    .locals 3

    const-class v1, Lcom/miui/securityscan/cards/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/cards/i;->Bz:Lcom/miui/securityscan/cards/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/cards/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/cards/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/cards/i;->Bz:Lcom/miui/securityscan/cards/i;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/cards/i;->Bz:Lcom/miui/securityscan/cards/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Dj(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/i;->By:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Dk(Lcom/miui/securityscan/cards/k;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, " listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/i;->Bx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Dl(Lcom/miui/securityscan/cards/k;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, " listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/i;->Bx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
