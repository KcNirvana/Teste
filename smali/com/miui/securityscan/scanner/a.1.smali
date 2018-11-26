.class public Lcom/miui/securityscan/scanner/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Cw:Lcom/miui/securityscan/scanner/a;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private Cv:Lcom/xiaomi/rcs/aidl/IRcsManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/a;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RcsSwitchManager"

    sput-object v0, Lcom/miui/securityscan/scanner/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DB(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.rcs.RCS_MANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic DF(Lcom/miui/securityscan/scanner/a;)Lcom/xiaomi/rcs/aidl/IRcsManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/a;->Cv:Lcom/xiaomi/rcs/aidl/IRcsManager;

    return-object v0
.end method

.method static synthetic DG(Lcom/miui/securityscan/scanner/a;Lcom/xiaomi/rcs/aidl/IRcsManager;)Lcom/xiaomi/rcs/aidl/IRcsManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/a;->Cv:Lcom/xiaomi/rcs/aidl/IRcsManager;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/securityscan/scanner/a;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/a;->Cw:Lcom/miui/securityscan/scanner/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/a;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/a;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/a;->Cw:Lcom/miui/securityscan/scanner/a;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/a;->Cw:Lcom/miui/securityscan/scanner/a;

    return-object v0
.end method


# virtual methods
.method public DC(Landroid/content/Context;Lcom/miui/securityscan/scanner/b;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/a;->DB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/D;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/securityscan/scanner/D;-><init>(Lcom/miui/securityscan/scanner/a;Landroid/content/Context;Lcom/miui/securityscan/scanner/b;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/scanner/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canOpen bind service fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canOpen bind service success"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DD(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/a;->DB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/F;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/F;-><init>(Lcom/miui/securityscan/scanner/a;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public DE(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/a;->DB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/E;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/scanner/E;-><init>(Lcom/miui/securityscan/scanner/a;Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/scanner/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openRcsSwitch bind service fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openRcsSwitch bind service success"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
