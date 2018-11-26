.class public Lcom/miui/gamebooster/ui/XunyouAlertActivity;
.super Lmiui/app/AlertActivity;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private aS:Ljava/lang/String;

.field private aT:Ljava/lang/String;

.field private aU:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aS:Ljava/lang/String;

    const-string/jumbo v1, "xunyou_alert_dialog_first"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "cancle"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.gamebooster.action.MI_PUSH_GAMEBOOSTER_HOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gamebooster/a/a;->eZ(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "xunyou_alert_dialog_overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "cancle"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->he(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "cancle"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gX(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "xunyou_alert_dialog_expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "cancle"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gZ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aS:Ljava/lang/String;

    const-string/jumbo v1, "xunyou_alert_dialog_first"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "open_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "xunyou_alert_dialog_overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "renew_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->he(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "open_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gX(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "xunyou_alert_dialog_expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "renew_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gZ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f070935

    const v2, 0x7f0705d4

    const/4 v3, 0x1

    const v5, 0x7f0705d6

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "alertType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aS:Ljava/lang/String;

    const-string/jumbo v1, "xunyou_alert_dialog_first"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070946

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070947

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aU:Ljava/lang/String;

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->message:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->finish()V

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aU:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aT:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->setupAlert()V

    return-void

    :cond_3
    const-string/jumbo v1, "xunyou_alert_dialog_overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07094a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07094b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aU:Ljava/lang/String;

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->he(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070948

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070949

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aU:Ljava/lang/String;

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gX(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "xunyou_alert_dialog_expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "expired"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07094c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c0055

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/XunyouAlertActivity;->aU:Ljava/lang/String;

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gZ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
