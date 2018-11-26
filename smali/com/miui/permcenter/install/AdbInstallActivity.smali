.class public Lcom/miui/permcenter/install/AdbInstallActivity;
.super Lmiui/app/AlertActivity;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private Ql:Ljava/lang/Object;

.field private Qm:I

.field private Qn:Lcom/miui/permcenter/install/a;

.field private Qo:Landroid/os/IMessenger;

.field private Qp:Landroid/graphics/drawable/Drawable;

.field private Qq:Landroid/widget/TextView;

.field private Qr:Lcom/miui/permcenter/install/i;

.field private Qs:Landroid/widget/Button;

.field private Qt:Landroid/widget/CheckBox;

.field private Qu:I

.field private Qv:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qm:I

    new-instance v0, Lcom/miui/permcenter/install/n;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/n;-><init>(Lcom/miui/permcenter/install/AdbInstallActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private RG()V
    .locals 3

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/install/a;->QH(Lcom/miui/permcenter/install/i;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v2}, Lcom/miui/permcenter/install/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/install/a;->Ra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v1}, Lcom/miui/permcenter/install/i;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/a/a;->QC(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RJ(Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void
.end method

.method private RH(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a0362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qt:Landroid/widget/CheckBox;

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qq:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Ql:Ljava/lang/Object;

    const-string/jumbo v2, "getButton"

    const-string/jumbo v3, "com.android.internal.app.AlertController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v0, v4}, Lcom/miui/a/c/a;->btA(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qs:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdbInstallActivity"

    const-string/jumbo v2, "initViews"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private RI(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    return v2
.end method

.method private RJ(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qt:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/install/i;->setMode(I)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/miui/permcenter/install/a;->QI(Lcom/miui/permcenter/install/i;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qt:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QX()V

    :cond_2
    return-void
.end method

.method private RK(Landroid/view/View;)V
    .locals 6

    :try_start_0
    const-class v0, Lmiui/app/AlertActivity;

    const-string/jumbo v1, "mAlertParams"

    invoke-static {p0, v0, v1}, Lcom/miui/a/c/a;->btE(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lmiui/app/AlertActivity;

    const-string/jumbo v2, "mAlert"

    invoke-static {p0, v1, v2}, Lcom/miui/a/c/a;->btE(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Ql:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mTitle"

    const v3, 0x7f070693

    invoke-virtual {p0, v3}, Lcom/miui/permcenter/install/AdbInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mView"

    invoke-static {v0, v1, v2, p1}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mNegativeButtonText"

    const v3, 0x7f070695

    invoke-virtual {p0, v3}, Lcom/miui/permcenter/install/AdbInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mPositiveButtonText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f070696

    invoke-virtual {p0, v4, v3}, Lcom/miui/permcenter/install/AdbInstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mPositiveButtonListener"

    invoke-static {v0, v1, v2, p0}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mNegativeButtonListener"

    invoke-static {v0, v1, v2, p0}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdbInstallActivity"

    const-string/jumbo v2, "setAlertParams"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private RL()V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qs:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qs:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f070696

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/AdbInstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic RM(Lcom/miui/permcenter/install/AdbInstallActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qm:I

    return v0
.end method

.method static synthetic RN(Lcom/miui/permcenter/install/AdbInstallActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic RO(Lcom/miui/permcenter/install/AdbInstallActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qm:I

    return p1
.end method

.method static synthetic RP(Lcom/miui/permcenter/install/AdbInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RG()V

    return-void
.end method

.method static synthetic RQ(Lcom/miui/permcenter/install/AdbInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RL()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiui/app/AlertActivity;->finish()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    invoke-direct {p0, v2}, Lcom/miui/permcenter/install/AdbInstallActivity;->RJ(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qt:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/miui/permcenter/a/a;->Qz(Ljava/lang/String;ZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qt:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/miui/permcenter/a/a;->Qz(Ljava/lang/String;ZZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    const-string/jumbo v1, "getIBinderExtra"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "observer"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, v1, v4, v5}, Lcom/miui/a/c/a;->btB(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/os/IMessenger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qo:Landroid/os/IMessenger;

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "flags"

    const/16 v6, 0x80

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "content://guard"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "parseApk"

    invoke-virtual {v1, v6, v7, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "AdbInstallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " parsePackage is null , path \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Failure [Invalid apk]"

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qv:Ljava/lang/String;

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QT()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v9, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    :cond_2
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_3
    const-string/jumbo v0, "pkgInfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-string/jumbo v6, "label"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "icon"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qp:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_4
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qp:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/install/a;->QL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "flags"

    const/16 v7, 0xc0

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "content://guard"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v8, "parseApk"

    invoke-virtual {v5, v7, v8, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v4, "pkgInfo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v4, v0}, Lcom/miui/permcenter/install/a;->QW(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v9, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QT()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0, v6}, Lcom/miui/permcenter/install/a;->QF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    iput v9, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_a
    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInstallActivity;->RI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v9, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/install/a;->QR(Ljava/lang/String;)Lcom/miui/permcenter/install/i;

    move-result-object v0

    new-instance v3, Lcom/miui/permcenter/install/i;

    invoke-direct {v3}, Lcom/miui/permcenter/install/i;-><init>()V

    iput-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    iget-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v3, v1}, Lcom/miui/permcenter/install/i;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/permcenter/install/i;->setName(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->Sg()I

    move-result v0

    if-eq v0, v10, :cond_d

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qn:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0, v6}, Lcom/miui/permcenter/install/a;->Rb(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qr:Lcom/miui/permcenter/install/i;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/a/a;->QA(Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030132

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RK(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->setupAlert()V

    invoke-direct {p0, v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RH(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qq:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RL()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x640

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qo:Landroid/os/IMessenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qu:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qv:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "msg"

    iget-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qv:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->Qo:Landroid/os/IMessenger;

    invoke-interface {v1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
