.class final Lcom/miui/optimizemanage/optimizeresult/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xh:Lcom/miui/optimizemanage/optimizeresult/d;

.field final synthetic xi:Lcom/miui/optimizemanage/OptimizemanageMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/d;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/s;->xh:Lcom/miui/optimizemanage/optimizeresult/d;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/s;->xi:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/s;->xi:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/s;->xh:Lcom/miui/optimizemanage/optimizeresult/d;

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Bo(Lcom/miui/optimizemanage/optimizeresult/d;)V

    const-string/jumbo v0, "activity_dislike"

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Ax(Ljava/lang/String;)V

    return-void
.end method
