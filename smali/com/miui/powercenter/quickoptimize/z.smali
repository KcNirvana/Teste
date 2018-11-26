.class final Lcom/miui/powercenter/quickoptimize/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEK:Lcom/miui/powercenter/quickoptimize/j;

.field final synthetic aEL:Landroid/content/Context;

.field final synthetic aEM:Lcom/miui/powercenter/quickoptimize/k;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/j;Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/z;->aEK:Lcom/miui/powercenter/quickoptimize/j;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/z;->aEL:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/powercenter/quickoptimize/z;->aEM:Lcom/miui/powercenter/quickoptimize/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/z;->aEK:Lcom/miui/powercenter/quickoptimize/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/powercenter/quickoptimize/j;->aPd(Lcom/miui/powercenter/quickoptimize/j;Z)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/z;->aEK:Lcom/miui/powercenter/quickoptimize/j;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/j;->aPg(Lcom/miui/powercenter/quickoptimize/j;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/z;->aEK:Lcom/miui/powercenter/quickoptimize/j;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/z;->aEL:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/z;->aEM:Lcom/miui/powercenter/quickoptimize/k;

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/quickoptimize/j;->aPh(Lcom/miui/powercenter/quickoptimize/j;Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/z;->aEK:Lcom/miui/powercenter/quickoptimize/j;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/z;->aEM:Lcom/miui/powercenter/quickoptimize/k;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/z;->aEL:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/quickoptimize/j;->aPf(Lcom/miui/powercenter/quickoptimize/j;Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;)V

    return-void
.end method
