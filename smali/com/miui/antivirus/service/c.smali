.class Lcom/miui/antivirus/service/c;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic avf:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/c;->avf:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/service/GuardService;Lcom/miui/antivirus/service/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/service/c;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/service/c;->avf:Lcom/miui/antivirus/service/GuardService;

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/miui/antivirus/utils/a;->aus(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/service/c;->avf:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBC(Lcom/miui/antivirus/service/GuardService;)V

    iget-object v0, p0, Lcom/miui/antivirus/service/c;->avf:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBr(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/guardprovider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/service/c;->avf:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBr(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/guardprovider/a;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/service/g;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/service/g;-><init>(Lcom/miui/antivirus/service/c;)V

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aqi(Lcom/miui/guardprovider/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
