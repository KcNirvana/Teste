.class public Lcom/miui/powercenter/quickoptimize/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDf:Ljava/util/ArrayList;

.field private aDg:Lcom/miui/powercenter/quickoptimize/e;

.field private aDh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/b;->aDf:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic aOt(Lcom/miui/powercenter/quickoptimize/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/b;->aDf:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic aOu(Lcom/miui/powercenter/quickoptimize/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aOv(Lcom/miui/powercenter/quickoptimize/b;)Lcom/miui/powercenter/quickoptimize/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/b;->aDg:Lcom/miui/powercenter/quickoptimize/e;

    return-object v0
.end method

.method static synthetic aOw(Lcom/miui/powercenter/quickoptimize/b;)Lcom/miui/powercenter/quickoptimize/ScanResultFrame;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/b;->aDh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    return-object v0
.end method


# virtual methods
.method public aOq(Ljava/util/ArrayList;)Lcom/miui/powercenter/quickoptimize/b;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/b;->aDf:Ljava/util/ArrayList;

    return-object p0
.end method

.method public aOr(Lcom/miui/powercenter/quickoptimize/e;)Lcom/miui/powercenter/quickoptimize/b;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/b;->aDg:Lcom/miui/powercenter/quickoptimize/e;

    return-object p0
.end method

.method public aOs(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/powercenter/quickoptimize/b;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/b;->aDh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    return-object p0
.end method

.method public build()Lcom/miui/powercenter/quickoptimize/a;
    .locals 2

    new-instance v0, Lcom/miui/powercenter/quickoptimize/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/quickoptimize/a;-><init>(Lcom/miui/powercenter/quickoptimize/b;Lcom/miui/powercenter/quickoptimize/a;)V

    return-object v0
.end method
