.class final Lcom/miui/gamebooster/service/p;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic mO:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0, v3, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->oi(Lcom/miui/gamebooster/service/GameBoosterService;ZLandroid/content/Context;)V

    const-string/jumbo v0, "gb_show_window"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->od(Lcom/miui/gamebooster/service/GameBoosterService;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->of(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0, v3, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->oi(Lcom/miui/gamebooster/service/GameBoosterService;ZLandroid/content/Context;)V

    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->od(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.miui.gamebooster.action.SIGN_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "key_gamebooster_signed_day"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/d;->ff(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pg()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "com.miui.gamebooster.action.START_GAMEMODE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->oi(Lcom/miui/gamebooster/service/GameBoosterService;ZLandroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "com.miui.gamebooster.action.RESET_USERSTATUS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->mO:Lcom/miui/gamebooster/service/GameBoosterService;

    const-string/jumbo v1, "gamebooster_xunyou_first_user"

    invoke-static {v1, v3}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nR(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z

    goto/16 :goto_0
.end method
