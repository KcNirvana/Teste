.class final Lcom/miui/powercenter/quickoptimize/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/b;


# instance fields
.field final synthetic aFg:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/L;->aFg:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ei(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/L;->aFg:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQn(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/common/d/f;

    move-result-object v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/16 v2, 0x403

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    return-void
.end method
