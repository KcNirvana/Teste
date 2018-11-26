.class public Lcom/miui/applicationlock/utils/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String;

.field private static abe:Lcom/miui/applicationlock/utils/d;


# instance fields
.field private abd:Lcom/xiaomi/ad/feedback/IAdFeedbackService;

.field private abf:Landroid/content/ServiceConnection;

.field private abg:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/utils/d;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DislikeManager"

    sput-object v0, Lcom/miui/applicationlock/utils/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/utils/d;->abg:Z

    return-void
.end method

.method private aej(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ad.FEEDBACK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/msa/util/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic ael(Lcom/miui/applicationlock/utils/d;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/d;->abd:Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-object v0
.end method

.method static synthetic aem(Lcom/miui/applicationlock/utils/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/utils/d;->abg:Z

    return v0
.end method

.method static synthetic aen(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/d;->abd:Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-object p1
.end method

.method static synthetic aeo(Lcom/miui/applicationlock/utils/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/utils/d;->abg:Z

    return p1
.end method

.method public static getInstance()Lcom/miui/applicationlock/utils/d;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/utils/d;->abe:Lcom/miui/applicationlock/utils/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/applicationlock/utils/d;

    invoke-direct {v0}, Lcom/miui/applicationlock/utils/d;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/utils/d;->abe:Lcom/miui/applicationlock/utils/d;

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/utils/d;->abe:Lcom/miui/applicationlock/utils/d;

    return-object v0
.end method


# virtual methods
.method public aeg(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method public aeh(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/utils/d;->aej(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/utils/r;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/utils/r;-><init>(Lcom/miui/applicationlock/utils/d;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/utils/d;->aej(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lcom/miui/applicationlock/utils/s;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/utils/s;-><init>(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/miui/applicationlock/utils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bind service fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public aek(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/miui/applicationlock/utils/d;->abg:Z

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/utils/d;->aej(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lcom/miui/applicationlock/utils/t;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/utils/t;-><init>(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/miui/applicationlock/utils/d;->abf:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v6, v0, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/applicationlock/utils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bind service fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
