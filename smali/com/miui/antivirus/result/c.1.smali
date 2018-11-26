.class public Lcom/miui/antivirus/result/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static amv:Lcom/miui/antivirus/result/DataModel;

.field private static amz:Ljava/lang/ref/WeakReference;


# instance fields
.field private ams:Ljava/util/ArrayList;

.field private amt:Lcom/miui/antivirus/result/d;

.field private amu:Lcom/miui/securityscan/cards/k;

.field private amw:Lcom/miui/antivirus/result/i;

.field private amx:Lcom/miui/antivirus/result/ScanResultFrame;

.field private amy:Lcom/miui/securityscan/cards/g;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get1()Lcom/miui/antivirus/result/DataModel;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/c;->amv:Lcom/miui/antivirus/result/DataModel;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/antivirus/result/c;->amz:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Lcom/miui/antivirus/result/e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/antivirus/result/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/result/d;-><init>(Lcom/miui/antivirus/result/c;Lcom/miui/antivirus/result/d;)V

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->amt:Lcom/miui/antivirus/result/d;

    new-instance v0, Lcom/miui/antivirus/result/D;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/result/D;-><init>(Lcom/miui/antivirus/result/c;)V

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->amu:Lcom/miui/securityscan/cards/k;

    new-instance v0, Lcom/miui/antivirus/result/E;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/result/E;-><init>(Lcom/miui/antivirus/result/c;)V

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->amy:Lcom/miui/securityscan/cards/g;

    invoke-static {p1}, Lcom/miui/antivirus/result/e;->asS(Lcom/miui/antivirus/result/e;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/antivirus/result/e;->asT(Lcom/miui/antivirus/result/e;)Lcom/miui/antivirus/result/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->amw:Lcom/miui/antivirus/result/i;

    invoke-static {p1}, Lcom/miui/antivirus/result/e;->asR(Lcom/miui/antivirus/result/e;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/antivirus/result/e;->asU(Lcom/miui/antivirus/result/e;)Lcom/miui/antivirus/result/ScanResultFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c;->amx:Lcom/miui/antivirus/result/ScanResultFrame;

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amx:Lcom/miui/antivirus/result/ScanResultFrame;

    iget-object v1, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/miui/antivirus/result/c;->amv:Lcom/miui/antivirus/result/DataModel;

    iget-object v3, p0, Lcom/miui/antivirus/result/c;->amw:Lcom/miui/antivirus/result/i;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/antivirus/result/ScanResultFrame;->arV(Landroid/content/Context;Lcom/miui/antivirus/result/DataModel;Lcom/miui/antivirus/result/i;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amx:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->arS()V

    invoke-static {}, Lcom/miui/antivirus/a/b;->azj()V

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/c;->amu:Lcom/miui/securityscan/cards/k;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dk(Lcom/miui/securityscan/cards/k;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/c;->amy:Lcom/miui/securityscan/cards/g;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/f;->CJ(Lcom/miui/securityscan/cards/g;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/result/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/c;-><init>(Lcom/miui/antivirus/result/e;)V

    return-void
.end method

.method public static asF(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/antivirus/result/f;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/result/f;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/result/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static asJ(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sput-object v0, Lcom/miui/antivirus/result/c;->amz:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/antivirus/result/c;->amz:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic asL(Lcom/miui/antivirus/result/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic asM()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/c;->amz:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic asN(Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;
    .locals 0

    sput-object p0, Lcom/miui/antivirus/result/c;->amv:Lcom/miui/antivirus/result/DataModel;

    return-object p0
.end method

.method public static isReady()Z
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/c;->amv:Lcom/miui/antivirus/result/DataModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public asB(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/antivirus/result/Advertisement;->aso()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/d/f;

    invoke-direct {v1, p1, p2}, Lcom/miui/securityscan/d/f;-><init>(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public asC()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amx:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->arR()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public asD()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amx:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->arT()V

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/c;->amu:Lcom/miui/securityscan/cards/k;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dl(Lcom/miui/securityscan/cards/k;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/c;->amy:Lcom/miui/securityscan/cards/g;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/f;->CK(Lcom/miui/securityscan/cards/g;)V

    return-void
.end method

.method public asE()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amw:Lcom/miui/antivirus/result/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amw:Lcom/miui/antivirus/result/i;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/i;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public asG(Lcom/miui/antivirus/result/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/antivirus/result/c;->asE()V

    return-void
.end method

.method public asH(Lcom/miui/antivirus/result/BaseModel;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    iget-object v3, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/miui/antivirus/result/c;->ams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antivirus/result/c;->asE()V

    return-void
.end method

.method public asI(Lcom/miui/common/d/f;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amx:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/result/ScanResultFrame;->arW(Lcom/miui/common/d/f;)V

    return-void
.end method

.method public asK(Lcom/miui/common/customview/AdImageView;ILcom/miui/antivirus/result/Advertisement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c;->amt:Lcom/miui/antivirus/result/d;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/common/customview/AdImageView;->aGq(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method
