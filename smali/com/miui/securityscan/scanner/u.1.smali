.class Lcom/miui/securityscan/scanner/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Dz:Lcom/miui/securityscan/scanner/u;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/u;->mContext:Landroid/content/Context;

    return-void
.end method

.method private EZ(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "MIUI_UPDATE"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MIUI_UPDATE"

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic Fa(Lcom/miui/securityscan/scanner/u;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/u;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Fb(Lcom/miui/securityscan/scanner/u;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/u;->EZ(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/u;
    .locals 3

    const-class v1, Lcom/miui/securityscan/scanner/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/u;->Dz:Lcom/miui/securityscan/scanner/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/u;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/scanner/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/scanner/u;->Dz:Lcom/miui/securityscan/scanner/u;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/u;->Dz:Lcom/miui/securityscan/scanner/u;
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
.method public EY(Lcom/miui/securityscan/c/e;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/Z;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/Z;-><init>(Lcom/miui/securityscan/scanner/u;Lcom/miui/securityscan/c/e;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method
