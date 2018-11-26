.class final Lcom/miui/applicationlock/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic ajq:Lcom/miui/applicationlock/FirstUseAppLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/K;->ajq:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/K;->ajq:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->aly(Lcom/miui/applicationlock/FirstUseAppLockActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/c;->aed(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/K;->ajq:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alz(Lcom/miui/applicationlock/FirstUseAppLockActivity;)Lcom/miui/applicationlock/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/e;->notifyDataSetChanged()V

    return-void
.end method
