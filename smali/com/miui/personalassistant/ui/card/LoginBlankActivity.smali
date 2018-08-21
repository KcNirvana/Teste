.class public Lcom/miui/personalassistant/ui/card/LoginBlankActivity;
.super Landroid/app/Activity;
.source "LoginBlankActivity.java"


# static fields
.field public static final ACTION_INSTALL_MIJIA:Ljava/lang/String; = "action_install_mihome"

.field public static final ACTION_LOGIN:Ljava/lang/String; = "action_login"

.field public static final CARD_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.smarthome"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v4, 0x1b0b028f

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "action_login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1b0b029c

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1b0b029b

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$3;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$3;-><init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1b0b029a

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$2;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$2;-><init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$1;-><init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "action_install_mihome"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1b0b029e

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1b0b029d

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$6;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$6;-><init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1b0b0297

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$5;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$5;-><init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$4;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$4;-><init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
