.class public Lcom/miui/powercenter/deepsave/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aNp:Lcom/miui/powercenter/deepsave/a;


# instance fields
.field private aNo:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/a;->aNo:Ljava/util/List;

    return-void
.end method

.method private aZG(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/a;->aNo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/a;->aNo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method static synthetic aZI(Lcom/miui/powercenter/deepsave/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/deepsave/a;->aZG(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/powercenter/deepsave/a;
    .locals 1

    sget-object v0, Lcom/miui/powercenter/deepsave/a;->aNp:Lcom/miui/powercenter/deepsave/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/deepsave/a;

    invoke-direct {v0}, Lcom/miui/powercenter/deepsave/a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/deepsave/a;->aNp:Lcom/miui/powercenter/deepsave/a;

    :cond_0
    sget-object v0, Lcom/miui/powercenter/deepsave/a;->aNp:Lcom/miui/powercenter/deepsave/a;

    return-object v0
.end method


# virtual methods
.method public aZF()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/a;->aNo:Ljava/util/List;

    return-object v0
.end method

.method public aZH(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/a;->aNo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/powercenter/deepsave/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/deepsave/i;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/deepsave/i;-><init>(Lcom/miui/powercenter/deepsave/a;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/deepsave/e;-><init>(Landroid/content/Context;Lcom/miui/powercenter/deepsave/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/deepsave/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
