.class final Lcom/miui/antivirus/activity/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic asT:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic asU:Lmiui/widget/SlidingButton;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lmiui/widget/SlidingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/q;->asT:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/q;->asU:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDP(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/q;->asU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDB(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/q;->asT:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axT(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method
