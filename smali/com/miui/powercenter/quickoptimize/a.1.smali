.class public Lcom/miui/powercenter/quickoptimize/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDc:Ljava/util/ArrayList;

.field private aDd:Lcom/miui/powercenter/quickoptimize/e;

.field private aDe:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/quickoptimize/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDc:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/b;->aOu(Lcom/miui/powercenter/quickoptimize/b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/b;->aOv(Lcom/miui/powercenter/quickoptimize/b;)Lcom/miui/powercenter/quickoptimize/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDd:Lcom/miui/powercenter/quickoptimize/e;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/b;->aOt(Lcom/miui/powercenter/quickoptimize/b;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDc:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/b;->aOw(Lcom/miui/powercenter/quickoptimize/b;)Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDe:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDe:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/a;->aDd:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aPV(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/e;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDe:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aPW()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/quickoptimize/b;Lcom/miui/powercenter/quickoptimize/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/quickoptimize/a;-><init>(Lcom/miui/powercenter/quickoptimize/b;)V

    return-void
.end method

.method public static aOn(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/deepsave/a;->getInstance()Lcom/miui/powercenter/deepsave/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/powercenter/deepsave/a;->aZH(Landroid/content/Context;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "02-13"

    invoke-static {v0}, Lcom/miui/powercenter/deepsave/c;->aZN(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public aOo(Lcom/miui/common/d/f;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDe:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aPX(Lcom/miui/common/d/f;)V

    return-void
.end method

.method public aOp()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/a;->aDe:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/a;->aDd:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/e;->getSectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aPY(I)V

    return-void
.end method
