.class public Lcom/miui/antivirus/activity/MainActivity;
.super Lcom/miui/common/a/d;
.source ""


# static fields
.field private static final synthetic arN:[I

.field private static final synthetic arO:[I

.field private static final synthetic arP:[I

.field private static final synthetic arQ:[I

.field private static final ark:Ljava/lang/String;

.field private static final arl:Ljava/lang/String;

.field protected static arz:Z


# instance fields
.field private arA:I

.field private arB:Lcom/miui/antivirus/ui/MainActivityView;

.field private arC:Z

.field private arD:Lcom/miui/antivirus/activity/b;

.field private arE:Lcom/miui/antivirus/a;

.field private arF:Z

.field private arG:Ljava/lang/Runnable;

.field private arH:Ljava/util/List;

.field private arI:Lmiui/app/ProgressDialog;

.field private arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

.field private arK:Lcom/miui/antivirus/whitelist/a;

.field private arL:Landroid/net/wifi/WifiManager;

.field private arM:Ljava/util/ArrayList;

.field private arm:Z

.field private arn:Landroid/database/ContentObserver;

.field private aro:I

.field private arp:Lcom/miui/antivirus/result/i;

.field private arq:Lcom/miui/guardprovider/c;

.field private arr:Lcom/miui/antivirus/k;

.field private ars:Lcom/miui/antivirus/activity/c;

.field private art:Z

.field private aru:Landroid/content/Context;

.field private arv:Lcom/miui/guardprovider/a;

.field private arw:Z

.field private arx:Z

.field private ary:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/antivirus/activity/MainActivity;->arz:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://api.sec.intl.miui.com/docs/disclaimer/av/en.html"

    :goto_0
    sput-object v0, Lcom/miui/antivirus/activity/MainActivity;->arl:Ljava/lang/String;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://api.sec.intl.miui.com/docs/disclaimer/av/cn.html"

    :goto_1
    sput-object v0, Lcom/miui/antivirus/activity/MainActivity;->ark:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "http://api.sec.miui.com/docs/disclaimer/av/en.html"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://api.sec.miui.com/docs/disclaimer/av/cn.html"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    iput-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arF:Z

    iput-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    iput-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->art:Z

    iput-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arx:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ary:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/antivirus/activity/k;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/k;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arG:Ljava/lang/Runnable;

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aro:I

    iput v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arA:I

    new-instance v0, Lcom/miui/antivirus/activity/c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/c;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    new-instance v0, Lcom/miui/antivirus/activity/l;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/activity/l;-><init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arn:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    iput-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arw:Z

    return-void
.end method

.method private awQ(Lmiui/app/ProgressDialog;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmiui/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awS()V

    :cond_3
    return-void
.end method

.method private awR(Lcom/miui/antivirus/utils/SecurityStatus;)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "stop_enter_result"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azw(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    if-eqz v1, :cond_0

    sget-object p1, Lcom/miui/antivirus/utils/SecurityStatus;->anW:Lcom/miui/antivirus/utils/SecurityStatus;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->awg(Lcom/miui/antivirus/utils/SecurityStatus;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCc()I

    move-result v1

    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/antivirus/ui/MainActivityView;->avT(IZZ)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x401

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/antivirus/activity/c;->aLh(ILjava/lang/Object;I)V

    return-void

    :cond_1
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "enter_result_safe"

    :goto_1
    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azw(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "enter_result_risky"

    goto :goto_1
.end method

.method private awS()V
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayp()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arW:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->art:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    new-instance v1, Lcom/miui/antivirus/activity/v;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/v;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aql(Lcom/miui/guardprovider/b;)V

    invoke-static {}, Lcom/miui/antivirus/a/d;->azv()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private awT()V
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayp()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axl()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axn()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private awU(Lcom/miui/antivirus/b/a;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/antivirus/b/a;->aAX()Lcom/miui/antivirus/model/b;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/antivirus/b/a;->aAY()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayn()[I

    move-result-object v2

    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/a;->aCD(Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/a;->aCB(Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->aqS()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/a;->aCC(Z)V

    new-instance v1, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alT:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f070527

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->aqH()Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    move-result-object v2

    sget-object v5, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avY:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    if-eq v2, v5, :cond_1

    :goto_1
    new-instance v2, Lcom/miui/antivirus/model/e;

    sget-object v5, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alS:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v3, v0}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {v4, v1}, Lcom/miui/antivirus/model/b;->arG(Z)V

    invoke-virtual {v4, v1}, Lcom/miui/antivirus/model/b;->arH(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/a;->aBM(Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->aqP()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v0

    :goto_2
    new-instance v5, Lcom/miui/antivirus/model/e;

    sget-object v6, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alS:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3, v2}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v0}, Lcom/miui/antivirus/model/e;->arI(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    invoke-virtual {v4, v1}, Lcom/miui/antivirus/model/b;->arG(Z)V

    invoke-virtual {v4, v1}, Lcom/miui/antivirus/model/b;->arH(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/a;->aBL(Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antivirus/b/a;->aAY()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/antivirus/b/a;->aAZ()Z

    move-result v1

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayo()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/b/a;->aBa()Lcom/miui/antivirus/model/WifiModel$WifiItems;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    move-object v0, v3

    :goto_3
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f07053b

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    sget-object v3, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alC:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v2, v3, v1}, Lcom/miui/antivirus/a;->aCF(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    goto :goto_3

    :pswitch_7
    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f07053c

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    sget-object v3, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alE:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v2, v3, v1}, Lcom/miui/antivirus/a;->aCF(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    goto :goto_3

    :pswitch_8
    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f07053d

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    sget-object v3, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alF:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v2, v3, v1}, Lcom/miui/antivirus/a;->aCF(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    goto :goto_3

    :pswitch_9
    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f07053e

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    sget-object v3, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alD:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v2, v3, v1}, Lcom/miui/antivirus/a;->aCF(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    goto :goto_3

    :pswitch_a
    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f07053f

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    sget-object v3, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alB:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v2, v3, v1}, Lcom/miui/antivirus/a;->aCF(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private awV()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "AntiVirusMainActivity"

    const-string/jumbo v1, "onFinishDefaultSMSCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCe()Lcom/miui/antivirus/model/b;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alT:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v3, 0x7f070526

    invoke-virtual {p0, v3}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v5, v0}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alT:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v3, 0x7f070562

    invoke-virtual {p0, v3}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awW()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arx:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "AntiVirusMainActivity"

    const-string/jumbo v1, "onFinishScanAnimation"

    invoke-static {v0, v1}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arx:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aBZ()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqk:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqn:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axw()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/miui/antivirus/result/i;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/antivirus/result/i;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/common/d/f;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arp:Lcom/miui/antivirus/result/i;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arp:Lcom/miui/antivirus/result/i;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->awc(Lcom/miui/antivirus/result/i;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCl()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->awR(Lcom/miui/antivirus/utils/SecurityStatus;)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainActivityView;->awf()V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainActivityView;->avR()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/antivirus/i;->aDR(J)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCq()I

    move-result v1

    invoke-static {v1}, Lcom/miui/antivirus/i;->aDu(I)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCo()I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v2}, Lcom/miui/antivirus/a;->aCq()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/miui/antivirus/i;->aDt(I)V

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDQ(Lcom/miui/antivirus/utils/SecurityStatus;)V

    return-void
.end method

.method private awX()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string/jumbo v0, "AntiVirusMainActivity"

    const-string/jumbo v1, "onFinishSystemCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCh()Lcom/miui/antivirus/model/b;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/miui/antivirus/model/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/c;->ara()Z

    move-result v0

    move v3, v0

    :goto_0
    if-eqz v1, :cond_3

    check-cast v1, Lcom/miui/antivirus/model/c;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/c;->arb()Z

    move-result v0

    :goto_1
    new-instance v1, Lcom/miui/antivirus/model/e;

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alU:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f070541

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v6, v3}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/miui/antivirus/model/e;

    sget-object v3, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alU:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f070542

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/miui/antivirus/model/e;

    sget-object v3, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alU:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    const v4, 0x7f070561

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/miui/antivirus/model/e;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/antivirus/i;->aDo()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private awY(Lcom/miui/antivirus/model/b;)V
    .locals 6

    const v5, 0x7f07054b

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayn()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    const v1, 0x7f070575

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/miui/antivirus/model/c;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/c;->ara()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/antivirus/activity/d;

    invoke-direct {v0, p0, v4}, Lcom/miui/antivirus/activity/d;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/d;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/miui/antivirus/a/e;->azS()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "start_by_safepay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pl.zdunex25.updater"

    const-string/jumbo v2, "pl.zdunex25.updater.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "user_action"

    const-string/jumbo v2, "user_action_update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-static {}, Lcom/miui/antivirus/a/e;->aAf()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    const v1, 0x7f070579

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "com.android.mms"

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    const v1, 0x7f070533

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aBS()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axi()V

    invoke-static {}, Lcom/miui/antivirus/a/e;->azM()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/a/e/a;->buc(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axi()V

    invoke-static {}, Lcom/miui/antivirus/a/e;->azL()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/miui/antivirus/activity/e;

    invoke-direct {v0, p0, v4}, Lcom/miui/antivirus/activity/e;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/e;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/miui/antivirus/a/e;->azQ()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action_register_foreground_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/miui/antivirus/a/e;->azP()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    const v1, 0x7f070535

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axi()V

    invoke-static {}, Lcom/miui/antivirus/a/e;->aAg()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070539

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07053a

    invoke-virtual {p0, v2, v1}, Lcom/miui/antivirus/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/r;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/activity/r;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/b;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private awZ(Lcom/miui/antivirus/model/g;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->getItemKey()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axi()V

    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/miui/antivirus/i;->aDy(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aBX()V

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/miui/antivirus/i;->aDz(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aBU()V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/miui/antivirus/i;->aDA(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aBU()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/a;->aCA(Lcom/miui/antivirus/model/b;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arK:Lcom/miui/antivirus/whitelist/a;

    check-cast p1, Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/whitelist/a;->aAn(Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/a;->aCz(Lcom/miui/antivirus/model/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/antivirus/i;->aDk()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Lcom/miui/antivirus/model/b;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDT(Ljava/util/ArrayList;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic axA(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/k;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arr:Lcom/miui/antivirus/k;

    return-object v0
.end method

.method static synthetic axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    return-object v0
.end method

.method static synthetic axC(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->art:Z

    return v0
.end method

.method static synthetic axD(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic axE(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/guardprovider/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    return-object v0
.end method

.method static synthetic axF(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arx:Z

    return v0
.end method

.method static synthetic axG(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ary:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    return-object v0
.end method

.method static synthetic axI(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arD:Lcom/miui/antivirus/activity/b;

    return-object v0
.end method

.method static synthetic axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    return-object v0
.end method

.method static synthetic axK(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arF:Z

    return v0
.end method

.method static synthetic axL(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    return-object v0
.end method

.method static synthetic axM(Lcom/miui/antivirus/activity/MainActivity;)Lmiui/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arI:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic axN(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    return-object v0
.end method

.method static synthetic axO(Lcom/miui/antivirus/activity/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/activity/MainActivity;->aro:I

    return p1
.end method

.method static synthetic axP(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->art:Z

    return p1
.end method

.method static synthetic axQ(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    return p1
.end method

.method static synthetic axR(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    return-object p1
.end method

.method static synthetic axS(Lcom/miui/antivirus/activity/MainActivity;Lmiui/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->awQ(Lmiui/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic axT(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awS()V

    return-void
.end method

.method static synthetic axU(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awT()V

    return-void
.end method

.method static synthetic axV(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->awU(Lcom/miui/antivirus/b/a;)V

    return-void
.end method

.method static synthetic axW(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awV()V

    return-void
.end method

.method static synthetic axX(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awW()V

    return-void
.end method

.method static synthetic axY(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awX()V

    return-void
.end method

.method static synthetic axZ(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->awY(Lcom/miui/antivirus/model/b;)V

    return-void
.end method

.method private axa(Lcom/miui/antivirus/model/g;)V
    .locals 3

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayq()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->arE()Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/miui/antivirus/i;->aDn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/antivirus/utils/m;->auZ(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aql:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCs()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqn:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCi()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqj:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqn:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCg()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqi:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqn:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private axb(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/model/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/miui/antivirus/model/a;-><init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private axc()V
    .locals 2

    const-string/jumbo v0, "AntiVirusMainActivity"

    const-string/jumbo v1, "ERROR : GuardProvider Service disconnected !"

    invoke-static {v0, v1}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arJ:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awW()V

    return-void
.end method

.method private axe()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arx:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->awe()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->awg(Lcom/miui/antivirus/utils/SecurityStatus;)V

    new-instance v0, Lcom/miui/antivirus/activity/s;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/s;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private axf()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arL:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arL:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aBX()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axi()V

    invoke-static {}, Lcom/miui/antivirus/a/e;->aAh()V

    return-void
.end method

.method private axg()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arG:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asJ(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asF(Landroid/content/Context;)V

    return-void
.end method

.method private axh()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCl()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anW:Lcom/miui/antivirus/utils/SecurityStatus;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/MainActivityView;->awg(Lcom/miui/antivirus/utils/SecurityStatus;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCc()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCq()I

    move-result v1

    sub-int v2, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c003c

    invoke-virtual {v4, v6, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c003d

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->awd(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private axi()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCc()I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v3, p0, Lcom/miui/antivirus/activity/MainActivity;->arC:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/antivirus/ui/MainActivityView;->avT(IZZ)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axw()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->asC()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->asE()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCq()I

    move-result v0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDu(I)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCo()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCq()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDt(I)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCl()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDQ(Lcom/miui/antivirus/utils/SecurityStatus;)V

    return-void
.end method

.method private axj(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->avX(F)V

    return-void
.end method

.method private axk()V
    .locals 5

    const v4, 0x7f070570

    const v1, 0x7f07056f

    const v3, 0x104000a

    const/high16 v2, 0x1040000

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/securityscan/utils/a;->Ij(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/n;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/n;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v3, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/o;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/o;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private axl()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/miui/securitycenter/a;->brW(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/32 v0, 0x61a8000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    iput-boolean v4, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    iput-boolean v4, p0, Lcom/miui/antivirus/activity/MainActivity;->arw:Z

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arw:Z

    if-eqz v0, :cond_7

    :cond_2
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    if-eqz v0, :cond_3

    const v0, 0x7f07060a

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f070790

    invoke-virtual {p0, v2, v0}, Lcom/miui/antivirus/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    if-eqz v0, :cond_5

    const v0, 0x7f070791

    :goto_2
    new-instance v2, Lcom/miui/antivirus/activity/t;

    invoke-direct {v2, p0}, Lcom/miui/antivirus/activity/t;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/u;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/u;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "clean_master"

    :goto_3
    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azO(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_3
    const v0, 0x7f07078c

    goto :goto_0

    :cond_4
    const v0, 0x7f070982

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const v0, 0x7f07077d

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "home_page_optimise"

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->finish()V

    goto :goto_4
.end method

.method private axm()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7f030161

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a03a5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07071b

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    const v5, 0x7f07071a

    invoke-virtual {p0, v5, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v5, v4, v1

    new-instance v6, Landroid/text/style/URLSpan;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "zh_CN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity;->ark:Ljava/lang/String;

    :goto_0
    invoke-direct {v6, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {v2, v6, v4, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a03a6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03a7

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a03a9

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f07071c

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f07071d

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a03a8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v9}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    new-instance v2, Lcom/miui/antivirus/activity/p;

    invoke-direct {v2, p0, v1}, Lcom/miui/antivirus/activity/p;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070719

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/antivirus/activity/q;

    invoke-direct {v2, p0, v1}, Lcom/miui/antivirus/activity/q;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lmiui/widget/SlidingButton;)V

    const v1, 0x7f07071e

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void

    :cond_0
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity;->arl:Ljava/lang/String;

    goto :goto_0
.end method

.method private axn()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070617

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070618

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/y;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/y;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private axo()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070617

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070618

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/x;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/x;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private axr()V
    .locals 1

    invoke-static {}, Lcom/miui/antivirus/i;->aDM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axm()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arr:Lcom/miui/antivirus/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/k;->aEm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arr:Lcom/miui/antivirus/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/k;->aEn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Lcom/miui/antivirus/activity/MainActivity;->axu(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awS()V

    const-string/jumbo v0, "scan"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azC(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private axs()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f070729

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0, v1, v1}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arI:Lmiui/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arI:Lmiui/app/ProgressDialog;

    new-instance v1, Lcom/miui/antivirus/activity/G;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/G;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/miui/antivirus/activity/f;

    invoke-direct {v0, p0, v2}, Lcom/miui/antivirus/activity/f;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/f;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private axt()V
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aro:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    new-instance v1, Lcom/miui/antivirus/activity/z;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/z;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aql(Lcom/miui/guardprovider/b;)V

    :cond_0
    return-void
.end method

.method private axv()V
    .locals 3

    new-instance v0, Lcom/miui/antivirus/activity/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/activity/a;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private axw()Ljava/util/List;
    .locals 14

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCr()Lcom/miui/antivirus/model/d;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCh()Lcom/miui/antivirus/model/b;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCe()Lcom/miui/antivirus/model/b;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCf()Z

    move-result v6

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCp()Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/a;->aCn()Ljava/util/List;

    move-result-object v8

    if-eqz v5, :cond_b

    move v0, v1

    :goto_0
    iget-object v9, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v9}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/miui/antivirus/model/b;

    sget-object v12, Lcom/miui/antivirus/model/AppModel$CardType;->alc:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v11, v12}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    new-instance v12, Lcom/miui/antivirus/model/b;

    sget-object v13, Lcom/miui/antivirus/model/AppModel$CardType;->alf:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v12, v13}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_0

    invoke-virtual {v3}, Lcom/miui/antivirus/model/d;->aqQ()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Lcom/miui/antivirus/model/b;

    sget-object v13, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v12, v13}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    invoke-virtual {v12, v1}, Lcom/miui/antivirus/model/b;->aqU(Z)V

    const v13, 0x7f070543

    invoke-virtual {p0, v13}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/b;->setTitle(Ljava/lang/String;)V

    const v13, 0x7f070551

    invoke-virtual {p0, v13}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/b;->aqT(Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lcom/miui/antivirus/model/b;

    sget-object v4, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v3, v4}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v4, Lcom/miui/antivirus/model/AppModel$AppGroup;->alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_3

    if-nez v9, :cond_3

    if-eqz v6, :cond_7

    :cond_3
    new-instance v3, Lcom/miui/antivirus/model/b;

    sget-object v4, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v3, v4}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/model/b;->aqU(Z)V

    const v4, 0x7f070544

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->setTitle(Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    invoke-virtual {v5, v2}, Lcom/miui/antivirus/model/b;->arG(Z)V

    invoke-virtual {v5, v1}, Lcom/miui/antivirus/model/b;->arH(Z)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual {v5, v2}, Lcom/miui/antivirus/model/b;->arH(Z)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v9, :cond_6

    new-instance v0, Lcom/miui/antivirus/model/b;

    sget-object v3, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v3}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v3, Lcom/miui/antivirus/model/AppModel$AppGroup;->aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/b;->arG(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arH(Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_6

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/b;->arH(Z)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v6, :cond_7

    new-instance v0, Lcom/miui/antivirus/model/b;

    sget-object v3, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v3}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v3, Lcom/miui/antivirus/model/AppModel$AppGroup;->ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/b;->arG(Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/miui/antivirus/model/b;

    sget-object v3, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v3}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    new-instance v3, Lcom/miui/antivirus/model/b;

    sget-object v4, Lcom/miui/antivirus/model/AppModel$CardType;->alb:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v3, v4}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v4, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->aqU(Z)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v2

    const v9, 0x7f0c0025

    invoke-virtual {v4, v9, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/model/b;->setTitle(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->arH(Z)V

    new-instance v0, Lcom/miui/antivirus/model/b;

    sget-object v3, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v3}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->aqU(Z)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f0c0026

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/b;->setTitle(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/utils/a;->aui(Landroid/content/Context;)I

    move-result v0

    new-instance v3, Lcom/miui/antivirus/model/b;

    sget-object v4, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v3, v4}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    if-nez v0, :cond_c

    const v0, 0x7f070572

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/miui/antivirus/model/b;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/antivirus/model/b;

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ale:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/b;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v1, Lcom/miui/antivirus/model/AppModel$SafeGroup;->alq:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/b;->aqV(Lcom/miui/antivirus/model/AppModel$SafeGroup;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v10

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const v2, 0x7f0c0028

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private axx()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic axy(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arm:Z

    return v0
.end method

.method static synthetic axz(Lcom/miui/antivirus/activity/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aro:I

    return v0
.end method

.method static synthetic aya(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->awZ(Lcom/miui/antivirus/model/g;)V

    return-void
.end method

.method static synthetic ayb(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->axa(Lcom/miui/antivirus/model/g;)V

    return-void
.end method

.method static synthetic ayc(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->axb(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V

    return-void
.end method

.method static synthetic ayd(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axc()V

    return-void
.end method

.method static synthetic aye(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axe()V

    return-void
.end method

.method static synthetic ayf(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axf()V

    return-void
.end method

.method static synthetic ayg(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axg()V

    return-void
.end method

.method static synthetic ayh(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axi()V

    return-void
.end method

.method static synthetic ayi(Lcom/miui/antivirus/activity/MainActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->axj(F)V

    return-void
.end method

.method static synthetic ayj(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axr()V

    return-void
.end method

.method static synthetic ayk(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axs()V

    return-void
.end method

.method static synthetic ayl(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axt()V

    return-void
.end method

.method static synthetic aym(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axx()V

    return-void
.end method

.method private static synthetic ayn()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arN:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arN:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/AppModel$AppGroup;->values()[Lcom/miui/antivirus/model/AppModel$AppGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->all:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$AppGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/antivirus/activity/MainActivity;->arN:[I

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

.method private static synthetic ayo()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arO:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arO:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->values()[Lcom/miui/antivirus/model/WifiModel$WifiItems;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alB:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alC:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alD:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alE:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alF:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/antivirus/activity/MainActivity;->arO:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic ayp()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arP:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arP:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->values()[Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arS:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arT:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arV:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arW:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/antivirus/activity/MainActivity;->arP:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic ayq()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arQ:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity;->arQ:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->values()[Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alS:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alT:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alU:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/miui/antivirus/activity/MainActivity;->arQ:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public awM(Lcom/miui/common/customview/AdImageView;ILcom/miui/antivirus/result/Advertisement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/antivirus/result/c;->asK(Lcom/miui/common/customview/AdImageView;ILcom/miui/antivirus/result/Advertisement;)V

    return-void
.end method

.method public awN(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/antivirus/result/c;->asB(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V

    return-void
.end method

.method public awO(Lcom/miui/antivirus/result/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/result/c;->asG(Lcom/miui/antivirus/result/a;)V

    return-void
.end method

.method public awP(Lcom/miui/antivirus/result/BaseModel;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/antivirus/result/c;->asH(Lcom/miui/antivirus/result/BaseModel;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public axd(Lcom/miui/antivirus/model/g;)V
    .locals 5

    const v4, 0x7f07053b

    const/16 v0, 0x64

    invoke-static {}, Lcom/miui/antivirus/activity/MainActivity;->ayq()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->arE()Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arA:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arA:I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->aqQ()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->arF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axh()V

    :cond_1
    const-string/jumbo v1, "AntiVirusMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/antivirus/activity/MainActivity;->arA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v3}, Lcom/miui/antivirus/a;->aCk()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arA:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    invoke-virtual {v2}, Lcom/miui/antivirus/a;->aCk()I

    move-result v2

    div-int/2addr v1, v2

    if-le v1, v0, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/MainActivityView;->avY(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070742

    invoke-virtual {p0, v2}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->arF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->avZ(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->aqQ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->arF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->aqQ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqj:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->aqQ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqi:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/antivirus/model/g;->aqQ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqk:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/ui/MainActivityView;->awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public axp(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/miui/common/b/t;->aJr(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axs()V

    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070720

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070721

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/A;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/A;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    const v2, 0x7f070726

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/B;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/B;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/C;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/C;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method public axq()V
    .locals 1

    invoke-static {}, Lcom/miui/antivirus/result/c;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arF:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/antivirus/activity/MainActivity;->arz:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/antivirus/activity/MainActivity;->arz:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avV()V

    return-void

    :cond_1
    return-void
.end method

.method public axu(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awS()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070720

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070724

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/D;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/activity/D;-><init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/content/Context;)V

    const v2, 0x7f070728

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/E;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/E;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/F;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/F;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arr:Lcom/miui/antivirus/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/antivirus/k;->aEo(J)V

    const-string/jumbo v0, "pop_up"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azC(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f070723

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/a;->Il(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axr()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->awT()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030162

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/k;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/k;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arr:Lcom/miui/antivirus/k;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aqi(Lcom/miui/guardprovider/b;)V

    new-instance v0, Lcom/miui/antivirus/activity/m;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/m;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arq:Lcom/miui/guardprovider/c;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arq:Lcom/miui/guardprovider/c;

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aqj(Lcom/miui/guardprovider/c;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arE:Lcom/miui/antivirus/a;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->aru:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arK:Lcom/miui/antivirus/whitelist/a;

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arL:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/miui/antivirus/activity/b;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/b;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arD:Lcom/miui/antivirus/activity/b;

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainActivityView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->awa(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    const v1, 0x7f070614

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->awd(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    const v1, 0x7f070615

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->avZ(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axr()V

    :goto_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axv()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->ars:Lcom/miui/antivirus/activity/c;

    const-wide/16 v2, 0x258

    const/16 v1, 0x426

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/antivirus/activity/c;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "key_safepay_auto_scan_state"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->arn:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axk()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->axt()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arq:Lcom/miui/guardprovider/c;

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aqk(Lcom/miui/guardprovider/c;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arv:Lcom/miui/guardprovider/a;

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    invoke-static {v2}, Lcom/miui/antivirus/result/c;->asJ(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->arn:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->awf()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->arB:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avS()Lcom/miui/antivirus/result/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c;->asD()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    return-void
.end method
