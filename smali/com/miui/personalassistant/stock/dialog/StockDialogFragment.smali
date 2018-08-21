.class public Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;
.super Lcom/miui/personalassistant/stock/dialog/BaseDialogFragment;
.source "StockDialogFragment.java"


# static fields
.field private static final STOCK_DIALOG_FRAGMENT:Ljava/lang/String; = "StockDialogFragment"


# instance fields
.field private mItems:[Ljava/lang/CharSequence;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static showSingleChoiseDialogFragment(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;-><init>()V

    iput-object p1, v0, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const-string/jumbo v1, "StockDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
