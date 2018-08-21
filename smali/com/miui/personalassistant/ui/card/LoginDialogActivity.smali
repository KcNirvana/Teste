.class public Lcom/miui/personalassistant/ui/card/LoginDialogActivity;
.super Landroid/app/Activity;
.source "LoginDialogActivity.java"


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/card/LoginDialogActivity;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public checkLogin()V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v3, 0x1b0b0255

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v3, 0x1b0b0252

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v3, 0x1b0b00b2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$3;-><init>(Lcom/miui/personalassistant/ui/card/LoginDialogActivity;)V

    invoke-virtual {v2, v1, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v3, 0x1b0b00b3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$2;-><init>(Lcom/miui/personalassistant/ui/card/LoginDialogActivity;)V

    invoke-virtual {v2, v1, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/card/LoginDialogActivity;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->checkLogin()V

    return-void
.end method
