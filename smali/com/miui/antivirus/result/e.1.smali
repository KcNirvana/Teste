.class public Lcom/miui/antivirus/result/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private amB:Ljava/util/ArrayList;

.field private amC:Lcom/miui/antivirus/result/i;

.field private amD:Lcom/miui/antivirus/result/ScanResultFrame;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/e;->amB:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/antivirus/result/e;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic asR(Lcom/miui/antivirus/result/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->amB:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic asS(Lcom/miui/antivirus/result/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic asT(Lcom/miui/antivirus/result/e;)Lcom/miui/antivirus/result/i;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->amC:Lcom/miui/antivirus/result/i;

    return-object v0
.end method

.method static synthetic asU(Lcom/miui/antivirus/result/e;)Lcom/miui/antivirus/result/ScanResultFrame;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->amD:Lcom/miui/antivirus/result/ScanResultFrame;

    return-object v0
.end method


# virtual methods
.method public asO(Ljava/util/ArrayList;)Lcom/miui/antivirus/result/e;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/e;->amB:Ljava/util/ArrayList;

    return-object p0
.end method

.method public asP(Lcom/miui/antivirus/result/i;)Lcom/miui/antivirus/result/e;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/e;->amC:Lcom/miui/antivirus/result/i;

    return-object p0
.end method

.method public asQ(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/e;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/e;->amD:Lcom/miui/antivirus/result/ScanResultFrame;

    return-object p0
.end method

.method public build()Lcom/miui/antivirus/result/c;
    .locals 2

    new-instance v0, Lcom/miui/antivirus/result/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/result/c;-><init>(Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/result/c;)V

    return-object v0
.end method
