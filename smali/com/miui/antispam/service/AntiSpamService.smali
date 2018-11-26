.class public Lcom/miui/antispam/service/AntiSpamService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static aay:Ljava/lang/String;

.field public static aaz:Ljava/lang/String;


# instance fields
.field private aaA:Lcom/miui/antispam/service/b;

.field private aaB:Ljava/util/Map;

.field public aaC:Lcom/miui/antispam/service/c;

.field private aaD:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/AntiSpamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/service/AntiSpamService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/service/AntiSpamService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "timingUpdate"

    sput-object v0, Lcom/miui/antispam/service/AntiSpamService;->aay:Ljava/lang/String;

    const-string/jumbo v0, "quietWristband"

    sput-object v0, Lcom/miui/antispam/service/AntiSpamService;->aaz:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaB:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaD:I

    new-instance v0, Lcom/miui/antispam/service/d;

    invoke-direct {v0, p0}, Lcom/miui/antispam/service/d;-><init>(Lcom/miui/antispam/service/AntiSpamService;)V

    iput-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaA:Lcom/miui/antispam/service/b;

    return-void
.end method

.method static synthetic adr(Lcom/miui/antispam/service/AntiSpamService;)Lcom/miui/antispam/service/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaA:Lcom/miui/antispam/service/b;

    return-object v0
.end method

.method static synthetic ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaB:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic adt(Lcom/miui/antispam/service/AntiSpamService;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaD:I

    return v0
.end method

.method static synthetic adu(Lcom/miui/antispam/service/AntiSpamService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/AntiSpamService;->aaD:I

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaC:Lcom/miui/antispam/service/c;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/miui/antispam/service/c;

    invoke-direct {v0, p0}, Lcom/miui/antispam/service/c;-><init>(Lcom/miui/antispam/service/AntiSpamService;)V

    iput-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaC:Lcom/miui/antispam/service/c;

    sget-object v0, Lcom/miui/antispam/service/AntiSpamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/miui/antispam/service/AntiSpamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/miui/antispam/service/AntiSpamService;->aay:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaC:Lcom/miui/antispam/service/c;

    const-string/jumbo v1, "CloudPhoneList"

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/c;->adv(Ljava/lang/String;)Lcom/miui/antispam/service/a;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/a/a;

    invoke-virtual {v0}, Lcom/miui/antispam/service/a/a;->acX()V

    iget-object v0, p0, Lcom/miui/antispam/service/AntiSpamService;->aaC:Lcom/miui/antispam/service/c;

    const-string/jumbo v1, "CloudPhoneList"

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/c;->adw(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
