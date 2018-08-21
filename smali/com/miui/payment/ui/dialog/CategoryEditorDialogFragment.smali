.class public Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;
.super Lcom/miui/payment/ui/dialog/BaseDialogFragment;
.source "CategoryEditorDialogFragment.java"


# static fields
.field private static final CUSTOM_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "CustomDialogFragment"

.field private static final LIST_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "ListDialogFragment"

.field private static final SIMPLE_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "SimpleDialogFragment"


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mItems:[Ljava/lang/CharSequence;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static dismissCustomDialog(Landroid/app/FragmentManager;)V
    .locals 3

    const-string/jumbo v2, "CustomDialogFragment"

    invoke-virtual {p0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static dismissDeleteDialog(Landroid/app/FragmentManager;)V
    .locals 3

    const-string/jumbo v2, "SimpleDialogFragment"

    invoke-virtual {p0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private setChoiceItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private setCustomView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mCustomView:Landroid/view/View;

    return-void
.end method

.method private setListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public static showCustomDialog(Landroid/app/FragmentManager;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;

    invoke-direct {v0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;-><init>()V

    invoke-direct {v0, p1}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->setTitle(Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->setCustomView(Landroid/view/View;)V

    const-string/jumbo v1, "CustomDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showSimpleDialog(Landroid/app/FragmentManager;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;

    invoke-direct {v0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;-><init>()V

    invoke-direct {v0, p1}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->setMessage(Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->setListener(Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v1, "SimpleDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showSingleChoiceDialog(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;

    invoke-direct {v0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;-><init>()V

    invoke-direct {v0, p1, p2}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->setChoiceItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v1, "ListDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/high16 v5, 0x1040000

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CustomDialogFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "ListDialogFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "SimpleDialogFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method
