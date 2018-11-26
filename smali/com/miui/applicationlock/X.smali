.class final Lcom/miui/applicationlock/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic ajE:Lcom/miui/applicationlock/ConfirmAccessControl;

.field final synthetic ajF:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/X;->ajE:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput-object p2, p0, Lcom/miui/applicationlock/X;->ajF:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/X;->ajF:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
