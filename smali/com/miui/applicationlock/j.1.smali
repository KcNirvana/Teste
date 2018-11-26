.class Lcom/miui/applicationlock/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/utils/i;


# instance fields
.field private afx:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/j;->afx:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;Lcom/miui/applicationlock/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/j;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    return-void
.end method


# virtual methods
.method public aeM(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/j;->afx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->ali(Lcom/miui/applicationlock/ChooseAppToLockActivity;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/applicationlock/utils/m;->afC(II)V

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akT(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0, v3}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alk(Lcom/miui/applicationlock/ChooseAppToLockActivity;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akY(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akY(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/j;->afx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akR(Lcom/miui/applicationlock/ChooseAppToLockActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alk(Lcom/miui/applicationlock/ChooseAppToLockActivity;I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akX(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akY(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afD(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0, v3}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alk(Lcom/miui/applicationlock/ChooseAppToLockActivity;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akY(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akT(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    goto :goto_0
.end method
