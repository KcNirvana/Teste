.class final Lcom/miui/applicationlock/B;
.super Lcom/miui/common/expandableview/b;
.source ""


# instance fields
.field final synthetic ajh:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/B;->ajh:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0}, Lcom/miui/common/expandableview/b;-><init>()V

    return-void
.end method


# virtual methods
.method public apu(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/g;

    invoke-virtual {v0, p3, p4}, Lcom/miui/applicationlock/g;->getItem(II)Lcom/miui/applicationlock/utils/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/B;->ajh:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alb(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/applicationlock/g;->akF(Lcom/miui/applicationlock/utils/c;Z)V

    :cond_0
    return-void
.end method

.method public apv(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method
