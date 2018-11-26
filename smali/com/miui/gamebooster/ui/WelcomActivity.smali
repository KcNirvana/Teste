.class public Lcom/miui/gamebooster/ui/WelcomActivity;
.super Lcom/miui/common/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private bZ()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "gamebooster_entrance"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "noti_gameadd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "noti_gameadd"

    const-string/jumbo v1, "click"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gC(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "noti_gameopen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "noti_gameopen"

    const-string/jumbo v1, "click"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ca(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string/jumbo v1, "track_channel"

    const-string/jumbo v2, "channel_luncher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "top"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "track_gamebooster_enter_way"

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WelcomActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->finish()V

    return-void

    :cond_2
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->bZ()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "game_toggle_total_history_1"

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string/jumbo v0, "com.miui.gamebooster.action.MI_PUSH_GAMEBOOSTER_HOT"

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/WelcomActivity;->ca(Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/WelcomActivity;->ca(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
