.class public Lcom/miui/payment/ui/dialog/BaseDialogFragment;
.super Landroid/app/DialogFragment;
.source "BaseDialogFragment.java"


# static fields
.field private static final SIMPLE_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "payment_simple_dialog"

.field private static final TAG:Ljava/lang/String; = "BaseDialogFragment"


# instance fields
.field private mMessgae:Ljava/lang/CharSequence;

.field private mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createSimpleDialog()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->mMessgae:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static showDialogFragment(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showSimpleDialog(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;

    invoke-direct {v0}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->setDialogMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v1, "payment_simple_dialog"

    invoke-static {p0, v0, v1}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->showDialogFragment(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "payment_simple_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->createSimpleDialog()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->mMessgae:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BaseDialogFragment"

    const-string/jumbo v2, "show fragment exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
