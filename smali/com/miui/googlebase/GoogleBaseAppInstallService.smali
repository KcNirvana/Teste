.class public Lcom/miui/googlebase/GoogleBaseAppInstallService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final DEBUG:Z

.field public static final bde:Ljava/util/List;

.field private static bdm:I


# instance fields
.field private bdf:Ljava/util/List;

.field private bdg:Z

.field private bdh:Lcom/miui/googlebase/a;

.field private bdi:Landroid/content/BroadcastReceiver;

.field private bdj:Lcom/miui/googlebase/b;

.field private bdk:Ljava/lang/String;

.field private bdl:Landroid/content/BroadcastReceiver;

.field private bdn:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    sget-object v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    const-string/jumbo v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.gsf.login"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.gsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.partnersetup"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdm:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic bAA(Lcom/miui/googlebase/GoogleBaseAppInstallService;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic bAB(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAl()Z

    move-result v0

    return v0
.end method

.method static synthetic bAC(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAo()Z

    move-result v0

    return v0
.end method

.method static synthetic bAD(Lcom/miui/googlebase/GoogleBaseAppInstallService;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAi(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic bAE(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAq()V

    return-void
.end method

.method static synthetic bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAr(I)V

    return-void
.end method

.method static synthetic bAG(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAt()V

    return-void
.end method

.method private bAh(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x20000

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAq()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070918

    invoke-virtual {p0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/googlebase/g;

    invoke-direct {v1, p0}, Lcom/miui/googlebase/g;-><init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/googlebase/h;

    invoke-direct {v1, p0}, Lcom/miui/googlebase/h;-><init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private bAi(Landroid/content/Context;Z)V
    .locals 7

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdf:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/googlebase/b;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/googlebase/b;->bAJ(Lcom/miui/googlebase/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/googlebase/a/c;->bzQ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "GoogleBaseApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start to download : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/googlebase/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdh:Lcom/miui/googlebase/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdk:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/googlebase/b;->bAK(Lcom/miui/googlebase/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/miui/googlebase/a;->bAc(Ljava/lang/String;Lcom/miui/googlebase/b;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAo()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-static {v3}, Lcom/miui/googlebase/b;->bAJ(Lcom/miui/googlebase/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/googlebase/a/c;->bzQ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start to download first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-virtual {v4}, Lcom/miui/googlebase/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdh:Lcom/miui/googlebase/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-static {v4}, Lcom/miui/googlebase/b;->bAK(Lcom/miui/googlebase/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-virtual {v0, v3, v4}, Lcom/miui/googlebase/a;->bAc(Ljava/lang/String;Lcom/miui/googlebase/b;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAr(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAo()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-static {v1}, Lcom/miui/googlebase/b;->bAJ(Lcom/miui/googlebase/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/googlebase/a/c;->bzQ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start to download second: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-virtual {v2}, Lcom/miui/googlebase/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdh:Lcom/miui/googlebase/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-static {v2}, Lcom/miui/googlebase/b;->bAK(Lcom/miui/googlebase/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    invoke-virtual {v0, v1, v2}, Lcom/miui/googlebase/a;->bAc(Ljava/lang/String;Lcom/miui/googlebase/b;)V

    goto :goto_2
.end method

.method private bAj()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.product.cpu.abi"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.product.cpu.abi2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private bAk()I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MI PAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private bAl()Z
    .locals 10

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAp()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/miui/googlebase/GoogleBaseAppInstallService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GoogleBaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "json URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/miui/googlebase/a/a;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "json is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get google base app info from server - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v0, "googleSFApps"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_6

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v0, Lcom/miui/googlebase/b;

    const-string/jumbo v1, "apk"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "apkHash"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "displayName"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/miui/googlebase/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/googlebase/b;)V

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/miui/googlebase/c;->bAQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "GoogleBaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/googlebase/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdf:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v4, :cond_5

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "GoogleBaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/googlebase/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    :cond_5
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "host"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdk:Ljava/lang/String;

    sget-boolean v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GoogleBaseApp"

    const-string/jumbo v2, "getGoogleBaseAppInfoAndHost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    goto :goto_1
.end method

.method private static declared-synchronized bAm()V
    .locals 2

    const-class v1, Lcom/miui/googlebase/GoogleBaseAppInstallService;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdm:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bAn()Z
    .locals 2

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "arm64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private bAo()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdn:Ljava/lang/String;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bAp()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://a0.app.xiaomi.com/gapp/v2?sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "co="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "la="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cpu64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cpuArchitecture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAk()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "misystem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bAq()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private declared-synchronized bAr(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "IWhetstoneActivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-interface {v0}, Lmiui/security/ISecurityManager;->notifyAppsPreInstalled()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdg:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAu(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    sget v0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "ISecurityManager work abnormal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "GoogleBaseApp"

    const-string/jumbo v2, "stop service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private bAs()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/googlebase/i;

    invoke-direct {v1, p0}, Lcom/miui/googlebase/i;-><init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private bAt()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdg:Z

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdg:Z

    invoke-static {}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAm()V

    const v0, 0x493e0

    sget-boolean v1, Lcom/miui/googlebase/GoogleBaseAppInstallService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GoogleBaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAs()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAu(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "already begin working, deny this request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bAu(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/googlebase/a/b;->bzO(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "not record analytics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "securitycenter_googleappinstall"

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string/jumbo v1, "GoogleBaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "install info analytics: stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/analytics/Actions;->newCustomAction()Lcom/xiaomi/analytics/CustomAction;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    move-result-object v1

    const-string/jumbo v2, "install_stage"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object v1

    const-string/jumbo v2, "install_info"

    invoke-virtual {v1, v2, p2}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    return-void
.end method

.method static synthetic bAv(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdf:Ljava/util/List;

    return-object v0
.end method

.method static synthetic bAw(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bAx(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Lcom/miui/googlebase/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdh:Lcom/miui/googlebase/a;

    return-object v0
.end method

.method static synthetic bAy(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Lcom/miui/googlebase/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdj:Lcom/miui/googlebase/b;

    return-object v0
.end method

.method static synthetic bAz(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdf:Ljava/util/List;

    iput-object p0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdg:Z

    new-instance v0, Lcom/miui/googlebase/a;

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/googlebase/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdh:Lcom/miui/googlebase/a;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/googlebase/d;

    invoke-direct {v1, p0}, Lcom/miui/googlebase/d;-><init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/googlebase/e;

    invoke-direct {v0, p0}, Lcom/miui/googlebase/e;-><init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdi:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdi:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/miui/googlebase/f;

    invoke-direct {v0, p0}, Lcom/miui/googlebase/f;-><init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdl:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdl:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdl:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdi:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "finish"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAr(I)V

    invoke-virtual {p0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    const-string/jumbo v0, "install"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdn:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdn:Ljava/lang/String;

    const-string/jumbo v0, "GoogleBaseApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user Installing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAh(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
