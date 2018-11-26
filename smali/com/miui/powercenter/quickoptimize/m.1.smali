.class public Lcom/miui/powercenter/quickoptimize/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aDT:Lcom/miui/powercenter/quickoptimize/m;


# instance fields
.field private aDS:Lcom/miui/common/f/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/powercenter/quickoptimize/m;->aDT:Lcom/miui/powercenter/quickoptimize/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/m;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/common/f/a;->getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/m;->aDS:Lcom/miui/common/f/a;

    return-void
.end method

.method static synthetic aPt(Lcom/miui/powercenter/quickoptimize/m;)Lcom/miui/common/f/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/m;->aDS:Lcom/miui/common/f/a;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/powercenter/quickoptimize/m;
    .locals 2

    sget-object v0, Lcom/miui/powercenter/quickoptimize/m;->aDT:Lcom/miui/powercenter/quickoptimize/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/quickoptimize/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/quickoptimize/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/m;->aDT:Lcom/miui/powercenter/quickoptimize/m;

    :cond_0
    sget-object v0, Lcom/miui/powercenter/quickoptimize/m;->aDT:Lcom/miui/powercenter/quickoptimize/m;

    return-object v0
.end method


# virtual methods
.method public aPr(Lcom/miui/powercenter/quickoptimize/n;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/m;->aDS:Lcom/miui/common/f/a;

    const-string/jumbo v1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/m;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/quickoptimize/E;

    invoke-direct {v3, p0, p1}, Lcom/miui/powercenter/quickoptimize/E;-><init>(Lcom/miui/powercenter/quickoptimize/m;Lcom/miui/powercenter/quickoptimize/n;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/common/f/a;->aMn(Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/f/b;)Z

    return-void
.end method

.method public aPs(Lcom/miui/powercenter/quickoptimize/o;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/m;->aDS:Lcom/miui/common/f/a;

    const-string/jumbo v1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/m;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/quickoptimize/B;

    invoke-direct {v3, p0, p1}, Lcom/miui/powercenter/quickoptimize/B;-><init>(Lcom/miui/powercenter/quickoptimize/m;Lcom/miui/powercenter/quickoptimize/o;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/common/f/a;->aMn(Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/f/b;)Z

    return-void
.end method
