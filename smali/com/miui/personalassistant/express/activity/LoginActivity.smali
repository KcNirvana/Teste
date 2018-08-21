.class public Lcom/miui/personalassistant/express/activity/LoginActivity;
.super Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;
.source "LoginActivity.java"


# static fields
.field private static final DIALOG_LOGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/express/activity/LoginActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/express/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->login()V

    return-void
.end method

.method private createLoginDialog()Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/LoginActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b0251

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0256

    new-instance v3, Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/express/activity/LoginActivity$2;-><init>(Lcom/miui/personalassistant/express/activity/LoginActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/express/activity/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/express/activity/LoginActivity$1;-><init>(Lcom/miui/personalassistant/express/activity/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private login()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->showDialog(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->login()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->createLoginDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
