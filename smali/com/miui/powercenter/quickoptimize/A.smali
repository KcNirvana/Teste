.class final Lcom/miui/powercenter/quickoptimize/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/quickoptimize/r;


# instance fields
.field final synthetic aEN:Lcom/miui/powercenter/quickoptimize/j;

.field final synthetic aEO:Lcom/miui/powercenter/quickoptimize/k;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/j;Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/A;->aEN:Lcom/miui/powercenter/quickoptimize/j;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/A;->aEO:Lcom/miui/powercenter/quickoptimize/k;

    iput-object p3, p0, Lcom/miui/powercenter/quickoptimize/A;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aOk(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/A;->aEN:Lcom/miui/powercenter/quickoptimize/j;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/A;->aEO:Lcom/miui/powercenter/quickoptimize/k;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/A;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/powercenter/quickoptimize/j;->aPe(Lcom/miui/powercenter/quickoptimize/j;Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
