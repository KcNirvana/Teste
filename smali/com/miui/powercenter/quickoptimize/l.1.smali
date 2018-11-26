.class public Lcom/miui/powercenter/quickoptimize/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDQ:Z

.field private aDR:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aPo(ZLcom/miui/powercenter/model/ScanItemModel$ScanItems;)Lcom/miui/powercenter/quickoptimize/l;
    .locals 1

    new-instance v0, Lcom/miui/powercenter/quickoptimize/l;

    invoke-direct {v0}, Lcom/miui/powercenter/quickoptimize/l;-><init>()V

    iput-boolean p0, v0, Lcom/miui/powercenter/quickoptimize/l;->aDQ:Z

    iput-object p1, v0, Lcom/miui/powercenter/quickoptimize/l;->aDR:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    return-object v0
.end method


# virtual methods
.method public aPp()Lcom/miui/powercenter/model/ScanItemModel$ScanItems;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/l;->aDR:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    return-object v0
.end method

.method public aPq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/l;->aDQ:Z

    return v0
.end method
