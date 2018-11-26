.class public Lcom/miui/gamebooster/gbservices/e;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# static fields
.field private static pk:Z

.field private static ps:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private pj:Landroid/content/ServiceConnection;

.field private pl:I

.field private pm:I

.field private pn:Lcom/android/providers/downloads/remote/service/IDownloadService;

.field private po:Z

.field private pp:Z

.field private pq:Lcom/miui/gamebooster/service/d;

.field private pr:Z

.field private pt:Lcom/miui/gamebooster/gbservices/f;

.field private pu:Lcom/miui/gamebooster/gbservices/g;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/gbservices/e;->pk:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/gamebooster/gbservices/e;->ps:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gamebooster/gbservices/e;->pk:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->pp:Z

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/miui/gamebooster/gbservices/e;->pl:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/miui/gamebooster/gbservices/e;->pm:I

    new-instance v0, Lcom/miui/gamebooster/gbservices/z;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/z;-><init>(Lcom/miui/gamebooster/gbservices/e;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pj:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/e;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/e;->pq:Lcom/miui/gamebooster/service/d;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sc()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "com.android.providers.downloads.XL_DOWNLOAD"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.providers.downloads"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/e;->pj:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/miui/gamebooster/gbservices/e;->po:Z

    return-void
.end method

.method private sd()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/gbservices/f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/f;-><init>(Lcom/miui/gamebooster/gbservices/e;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pt:Lcom/miui/gamebooster/gbservices/f;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gamebooster/gbservices/e;->pk:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pq:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/e;->pt:Lcom/miui/gamebooster/gbservices/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private se()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/gbservices/g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/g;-><init>(Lcom/miui/gamebooster/gbservices/e;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pu:Lcom/miui/gamebooster/gbservices/g;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gamebooster/gbservices/e;->pk:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pq:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/e;->pu:Lcom/miui/gamebooster/gbservices/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sf()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->po:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/e;->pj:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->po:Z

    :cond_0
    return-void
.end method

.method static synthetic sg(Lcom/miui/gamebooster/gbservices/e;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gbservices/e;->pl:I

    return v0
.end method

.method static synthetic sh(Lcom/miui/gamebooster/gbservices/e;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gbservices/e;->pm:I

    return v0
.end method

.method static synthetic si(Lcom/miui/gamebooster/gbservices/e;)Lcom/android/providers/downloads/remote/service/IDownloadService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pn:Lcom/android/providers/downloads/remote/service/IDownloadService;

    return-object v0
.end method

.method static synthetic sj(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/service/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pq:Lcom/miui/gamebooster/service/d;

    return-object v0
.end method

.method static synthetic sk()I
    .locals 1

    sget v0, Lcom/miui/gamebooster/gbservices/e;->ps:I

    return v0
.end method

.method static synthetic sl(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pt:Lcom/miui/gamebooster/gbservices/f;

    return-object v0
.end method

.method static synthetic sm(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pu:Lcom/miui/gamebooster/gbservices/g;

    return-object v0
.end method

.method static synthetic sn(Lcom/miui/gamebooster/gbservices/e;Lcom/android/providers/downloads/remote/service/IDownloadService;)Lcom/android/providers/downloads/remote/service/IDownloadService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/e;->pn:Lcom/android/providers/downloads/remote/service/IDownloadService;

    return-object p1
.end method

.method static synthetic so(I)I
    .locals 0

    sput p0, Lcom/miui/gamebooster/gbservices/e;->ps:I

    return p0
.end method

.method static synthetic sp(Lcom/miui/gamebooster/gbservices/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/e;->sc()V

    return-void
.end method

.method static synthetic sq(Lcom/miui/gamebooster/gbservices/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/e;->sf()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->pr:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsNetPriority...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->pp:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/a/A;->hW(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/e;->se()V

    goto :goto_0
.end method

.method public open()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->pr:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tF(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsNetPriority...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->pp:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/gamebooster/a/A;->hW(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/e;->sd()V

    goto :goto_0
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tR(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/e;->pr:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pq:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pr()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gbservices/e;->pl:I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/e;->pq:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->ps()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gbservices/e;->pm:I

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/e;->pr:Z

    return-void
.end method
