.class public Lcom/miui/gamebooster/ui/WifiBoosterDetail;
.super Lcom/miui/common/a/d;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private S:Ljava/lang/Boolean;

.field private T:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/LinearLayout;

.field private mAction:Ljava/lang/String;

.field private mConn:Landroid/content/ServiceConnection;

.field private mIcon:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private slidingButton:Lmiui/widget/SlidingButton;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->S:Ljava/lang/Boolean;

    new-instance v0, Lcom/miui/gamebooster/ui/E;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/E;-><init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/gamebooster/ui/F;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/F;-><init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic ai(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->S:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic aj(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ak(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->T:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object v0
.end method

.method static synthetic al(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->slidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic am(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->S:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic an(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->T:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->setContentView(I)V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->U:Landroid/widget/TextView;

    const v0, 0x7f0a0213

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "action_detail_wifibooster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mConn:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "action_handsfree_mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->V:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->U:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->tH(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "action_detail_wifibooster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->T:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
