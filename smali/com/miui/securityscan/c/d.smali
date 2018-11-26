.class public Lcom/miui/securityscan/c/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Jy:Ljava/lang/ref/WeakReference;

.field public volatile canceled:Z


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/c/d;->canceled:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/c/d;->Jy:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public JZ()V
    .locals 3

    const-string/jumbo v0, "GroupFinishOptimizeCallBack"

    const-string/jumbo v1, "GroupFinishOptimizeCallBack onSystemAppOptimizeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/c/d;->Jy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/securityscan/c/d;->canceled:Z

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/c/j;

    invoke-direct {v2, p0, v0}, Lcom/miui/securityscan/c/j;-><init>(Lcom/miui/securityscan/c/d;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Ka()V
    .locals 8

    const/16 v7, 0x64

    const-string/jumbo v0, "GroupFinishOptimizeCallBack"

    const-string/jumbo v1, "GroupFinishOptimizeCallBack onMemoryOptimizeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/c/d;->Jy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/MainActivity;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    iget-object v6, v3, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    iget-object v0, v3, Lcom/miui/securityscan/MainActivity;->MS:Ljava/util/List;

    iget-object v1, v3, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FE()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x64

    iget-object v0, v3, Lcom/miui/securityscan/MainActivity;->MS:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v2, v3, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v2}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v2

    if-ge v2, v7, :cond_0

    iget-object v0, v3, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v0

    :cond_0
    sub-int/2addr v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    if-le v1, v7, :cond_1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Lcom/miui/securityscan/c/k;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/c/k;-><init>(Lcom/miui/securityscan/c/d;Ljava/util/List;Lcom/miui/securityscan/MainActivity;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/miui/securityscan/c/k;->start()V

    :cond_2
    return-void
.end method
