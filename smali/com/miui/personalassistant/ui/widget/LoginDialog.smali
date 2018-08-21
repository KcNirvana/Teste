.class public Lcom/miui/personalassistant/ui/widget/LoginDialog;
.super Lmiui/app/AlertDialog;
.source "LoginDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/LoginDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const v0, 0x1b0b0255

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoginDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x1b0b0252

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoginDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    const v0, 0x1b0b00b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/personalassistant/ui/widget/LoginDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    const v1, 0x1b0b00b3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/widget/LoginDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/personalassistant/ui/widget/LoginDialog$1;-><init>(Lcom/miui/personalassistant/ui/widget/LoginDialog;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/personalassistant/ui/widget/LoginDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
