.class final Lcom/miui/powercenter/provider/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private aCV:I

.field final synthetic aCW:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/powercenter/provider/e;->aCV:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, -0x1

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNK(Lcom/miui/powercenter/provider/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNM(Lcom/miui/powercenter/provider/PowerSaveService;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNJ(Lcom/miui/powercenter/provider/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNL(Lcom/miui/powercenter/provider/PowerSaveService;)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNQ(Lcom/miui/powercenter/provider/PowerSaveService;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNP(Lcom/miui/powercenter/provider/PowerSaveService;)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->aNO(Lcom/miui/powercenter/provider/PowerSaveService;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    :cond_4
    :goto_1
    iget v1, p0, Lcom/miui/powercenter/provider/e;->aCV:I

    if-le v2, v1, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/powercenter/a;->bfi()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/provider/e;->aCW:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0, p1, v2}, Lcom/miui/powercenter/provider/PowerSaveService;->aNN(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/content/Context;I)V

    :cond_5
    iput v2, p0, Lcom/miui/powercenter/provider/e;->aCV:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
