.class final Lcom/miui/securityscan/c/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic JK:Lcom/miui/securityscan/c/k;

.field final synthetic JL:Lcom/miui/securityscan/MainActivity;

.field final synthetic JM:Ljava/lang/Integer;

.field final synthetic JN:Landroid/widget/Button;

.field final synthetic JO:Landroid/widget/TextView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/k;Lcom/miui/securityscan/MainActivity;Ljava/lang/Integer;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/l;->JK:Lcom/miui/securityscan/c/k;

    iput-object p2, p0, Lcom/miui/securityscan/c/l;->JL:Lcom/miui/securityscan/MainActivity;

    iput-object p3, p0, Lcom/miui/securityscan/c/l;->JM:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/miui/securityscan/c/l;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/miui/securityscan/c/l;->JN:Landroid/widget/Button;

    iput-object p6, p0, Lcom/miui/securityscan/c/l;->JO:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/c/l;->JL:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    iget-object v1, p0, Lcom/miui/securityscan/c/l;->JM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/c/l;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/c/l;->JM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/c/l;->JN:Landroid/widget/Button;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/h;->IP(Landroid/content/Context;ILandroid/widget/Button;)V

    iget-object v0, p0, Lcom/miui/securityscan/c/l;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/c/l;->JM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/c/l;->JO:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/h;->IQ(Landroid/content/Context;ILandroid/widget/TextView;)V

    iget-object v0, p0, Lcom/miui/securityscan/c/l;->JL:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    iget-object v1, p0, Lcom/miui/securityscan/c/l;->JM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/CircleView;->Gt(I)V

    iget-object v0, p0, Lcom/miui/securityscan/c/l;->JL:Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/securityscan/c/l;->JM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/MainActivity;->Nn(I)V

    return-void
.end method
