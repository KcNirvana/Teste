.class final Lcom/miui/applicationlock/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ajd:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/x;->ajd:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "cancel_fingerprint_verify_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "cancel_fingerprint_verify_times"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/x;->ajd:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alq(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    return-void
.end method
