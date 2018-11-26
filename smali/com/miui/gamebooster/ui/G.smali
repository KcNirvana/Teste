.class final Lcom/miui/gamebooster/ui/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final synthetic cX:[I


# instance fields
.field final synthetic cT:Lcom/miui/gamebooster/ui/d;

.field final synthetic cU:Lcom/miui/gamebooster/ui/c;

.field final synthetic cV:I

.field final synthetic cW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/d;Lcom/miui/gamebooster/ui/c;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/G;->cT:Lcom/miui/gamebooster/ui/d;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    iput p3, p0, Lcom/miui/gamebooster/ui/G;->cV:I

    iput-object p4, p0, Lcom/miui/gamebooster/ui/G;->cW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ef()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/ui/G;->cX:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/G;->cX:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->values()[Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mB:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mC:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mD:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mF:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mG:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/gamebooster/ui/G;->cX:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->aY(Lcom/miui/gamebooster/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/ui/G;->cV:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    const-string/jumbo v2, "detailUrl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bH(Lcom/miui/gamebooster/ui/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bw(Lcom/miui/gamebooster/ui/c;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->aY(Lcom/miui/gamebooster/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/ui/G;->ef()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->aW(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->bb(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->connectVpn(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bv(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bz(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bw(Lcom/miui/gamebooster/ui/c;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->refreshUserState()I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mB:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bv(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/gamebooster/ui/G;->cV:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cW:Ljava/lang/String;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/r;->gr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u65f6\u95f4\u6233\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/G;->cW:Ljava/lang/String;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4}, Lcom/miui/gamebooster/a/r;->gr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string/jumbo v1, "gamebooster_xunyou_cache_time"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->om()V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bw(Lcom/miui/gamebooster/ui/c;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bv(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bj(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x70

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/e;->aLg(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    const-string/jumbo v2, "detailUrl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bH(Lcom/miui/gamebooster/ui/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bv(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bj(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/e;->aLg(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/G;->cU:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bw(Lcom/miui/gamebooster/ui/c;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
