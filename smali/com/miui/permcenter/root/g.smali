.class final Lcom/miui/permcenter/root/g;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic OW:Lcom/miui/permcenter/root/RootApplyActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/root/RootApplyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PK(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/permcenter/root/RootApplyActivity;->PN(Lcom/miui/permcenter/root/RootApplyActivity;I)I

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PL(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PK(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070678

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PK(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07067c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PL(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v3}, Lcom/miui/permcenter/root/RootApplyActivity;->PK(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070679

    invoke-virtual {v1, v3, v2}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PM(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PM(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v0}, Lcom/miui/permcenter/root/RootApplyActivity;->PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/root/g;->OW:Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-static {v3}, Lcom/miui/permcenter/root/RootApplyActivity;->PK(Lcom/miui/permcenter/root/RootApplyActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07067d

    invoke-virtual {v1, v3, v2}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
