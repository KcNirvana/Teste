.class final Lcom/miui/securityscan/c/k;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic JF:Lcom/miui/securityscan/c/d;

.field final synthetic JG:Ljava/util/List;

.field final synthetic JH:Lcom/miui/securityscan/MainActivity;

.field final synthetic JI:Landroid/widget/Button;

.field final synthetic JJ:Landroid/widget/TextView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/d;Ljava/util/List;Lcom/miui/securityscan/MainActivity;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/k;->JF:Lcom/miui/securityscan/c/d;

    iput-object p2, p0, Lcom/miui/securityscan/c/k;->JG:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/securityscan/c/k;->JH:Lcom/miui/securityscan/MainActivity;

    iput-object p4, p0, Lcom/miui/securityscan/c/k;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/miui/securityscan/c/k;->JI:Landroid/widget/Button;

    iput-object p6, p0, Lcom/miui/securityscan/c/k;->JJ:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v10, 0x3e8

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/c/k;->JG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/c/k;->JF:Lcom/miui/securityscan/c/d;

    iget-boolean v0, v0, Lcom/miui/securityscan/c/d;->canceled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/c/k;->JG:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/miui/securityscan/c/k;->JH:Lcom/miui/securityscan/MainActivity;

    iget-object v9, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v0, Lcom/miui/securityscan/c/l;

    iget-object v2, p0, Lcom/miui/securityscan/c/k;->JH:Lcom/miui/securityscan/MainActivity;

    iget-object v4, p0, Lcom/miui/securityscan/c/k;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/securityscan/c/k;->JI:Landroid/widget/Button;

    iget-object v6, p0, Lcom/miui/securityscan/c/k;->JJ:Landroid/widget/TextView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/c/l;-><init>(Lcom/miui/securityscan/c/k;Lcom/miui/securityscan/MainActivity;Ljava/lang/Integer;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v9, v0}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v10

    add-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GroupFinishOptimizeCallBack"

    const-string/jumbo v2, "thread interrupt:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
