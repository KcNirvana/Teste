.class public Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ard:Landroid/widget/Button;

.field private are:Landroid/widget/Button;

.field private arf:Landroid/widget/LinearLayout;

.field private arg:Landroid/widget/TextView;

.field private arh:Landroid/widget/TextView;

.field private ari:Lcom/miui/antivirus/model/VirusModel;

.field private arj:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private awG(Lcom/miui/antivirus/model/VirusModel;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/g;->aDb(Lcom/miui/antivirus/model/VirusModel;)V

    return-void
.end method

.method private awH(Lcom/miui/antivirus/model/VirusModel;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arj:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arg:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arh:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->art()Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->awJ(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->are:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->art()Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->awI(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private awI(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne p1, v0, :cond_0

    const v0, 0x7f07075e

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne p1, v0, :cond_1

    const v0, 0x7f07075d

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private awJ(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne p1, v0, :cond_0

    const v0, 0x7f07075f

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne p1, v0, :cond_1

    const v0, 0x7f070760

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private awK()V
    .locals 1

    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arj:Landroid/widget/ImageView;

    const v0, 0x7f0a03c3

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arg:Landroid/widget/TextView;

    const v0, 0x7f0a03c4

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arh:Landroid/widget/TextView;

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->are:Landroid/widget/Button;

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->ard:Landroid/widget/Button;

    const v0, 0x7f0a03c1

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arf:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->are:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->ard:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->arf:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private awL()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private finishActivity()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->overridePendingTransition(II)V

    :try_start_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string/jumbo v1, "android.app.ActivityManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "forceStopPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->overridePendingTransition(II)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->ari:Lcom/miui/antivirus/model/VirusModel;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->awG(Lcom/miui/antivirus/model/VirusModel;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->ari:Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/VirusModel;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070717

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->finishActivity()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->awL()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->finishActivity()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a03c1 -> :sswitch_2
        0x7f0a03c7 -> :sswitch_0
        0x7f0a03c8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030163

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->awK()V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "virus_info_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/VirusModel;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->ari:Lcom/miui/antivirus/model/VirusModel;

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->ari:Lcom/miui/antivirus/model/VirusModel;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->awH(Lcom/miui/antivirus/model/VirusModel;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    invoke-virtual {p0, v0, v0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->overridePendingTransition(II)V

    return-void
.end method
