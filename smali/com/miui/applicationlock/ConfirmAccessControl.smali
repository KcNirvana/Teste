.class public Lcom/miui/applicationlock/ConfirmAccessControl;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static ahs:J

.field private static final synthetic ahv:[I


# instance fields
.field private afJ:Z

.field private afK:Z

.field private afL:Z

.field private afM:Z

.field private afN:Z

.field private afO:Z

.field private afP:Z

.field private afQ:Z

.field private afR:Z

.field private afS:Z

.field private afT:Z

.field private afU:Z

.field public afV:Z

.field private afW:Z

.field private afX:Z

.field private afY:Z

.field private afZ:Z

.field private agA:Ljava/lang/CharSequence;

.field private agB:Landroid/widget/TextView;

.field private agC:Landroid/widget/ImageView;

.field private agD:Landroid/widget/ImageView;

.field private agE:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private agF:Lcom/miui/c/c;

.field private agG:Landroid/widget/TextView;

.field private agH:Ljava/lang/CharSequence;

.field private agI:Lcom/miui/a/b/a/d;

.field protected agJ:Landroid/widget/ImageView;

.field private agK:Landroid/content/Intent;

.field private agL:Z

.field private agM:Z

.field private agN:Landroid/app/KeyguardManager;

.field agO:Z

.field private agP:Lcom/miui/c/d;

.field private agQ:Lcom/miui/c/c;

.field private agR:Lcom/google/android/exoplayer2/source/MediaSource;

.field private agS:Landroid/widget/EditText;

.field private agT:I

.field agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field private agV:I

.field private agW:I

.field private agX:Landroid/widget/LinearLayout$LayoutParams;

.field agY:Ljava/lang/String;

.field private agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

.field private aga:Landroid/view/accessibility/AccessibilityManager;

.field private agb:Landroid/widget/ImageView;

.field private agc:Lcom/miui/applicationlock/utils/e;

.field private agd:Lcom/miui/applicationlock/utils/n;

.field private age:Landroid/view/View;

.field private agf:Lmiui/app/AlertDialog;

.field private agg:Landroid/os/IBinder;

.field private agh:Z

.field private agi:Landroid/widget/Button;

.field private agj:Landroid/os/CountDownTimer;

.field private agk:Landroid/net/Uri;

.field private agl:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private agm:Landroid/widget/TextView;

.field private agn:Landroid/database/ContentObserver;

.field private ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private agp:I

.field private agq:Lcom/miui/applicationlock/utils/a;

.field private agr:Landroid/widget/ImageView;

.field private ags:I

.field private agt:Landroid/widget/RelativeLayout;

.field private agu:Z

.field private agv:Landroid/view/View;

.field private agw:Landroid/widget/ImageView;

.field private agx:Landroid/widget/TextView;

.field private agy:Landroid/widget/TextView;

.field private agz:Landroid/widget/TextView;

.field private aha:Landroid/content/res/Resources;

.field private ahb:I

.field private ahc:Ljava/lang/Runnable;

.field private ahd:Lcom/miui/common/customview/gif/GifImageView;

.field private ahe:Lcom/miui/applicationlock/a/a;

.field private ahf:Lcom/miui/applicationlock/n;

.field private ahg:Landroid/view/ViewGroup;

.field private ahh:Z

.field private ahi:Landroid/widget/LinearLayout;

.field private ahj:Landroid/widget/TextView;

.field private ahk:Landroid/widget/RelativeLayout;

.field private ahl:Landroid/widget/ImageView;

.field private ahm:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private ahn:Lcom/miui/c/c;

.field private aho:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private ahp:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private ahq:I

.field ahr:Lcom/miui/applicationlock/widget/h;

.field private aht:I

.field private ahu:J

.field private final mHandler:Landroid/os/Handler;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mPackageName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mTitleTextColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agp:I

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/applicationlock/P;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/P;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/applicationlock/Q;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/Q;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agd:Lcom/miui/applicationlock/utils/n;

    return-void
.end method

.method private alC(Z)V
    .locals 7

    const/16 v6, 0x3e7

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v1, 0x7f0707cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aga:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aev()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->agq()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const v1, 0x7f0707a2

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agr(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {p0, v3}, Lcom/miui/applicationlock/utils/m;->afF(Landroid/content/Context;Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lmiui/security/SecurityManager;->addAccessControlPassForUser(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afM()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    :try_start_0
    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    invoke-static {v1}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afN()V

    :cond_6
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->age(JLandroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/applicationlock/aa;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/aa;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->overridePendingTransition(II)V

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/m;->ags(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfirmAccessControl"

    const-string/jumbo v2, "start other app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "checkAccess_to_uncheck"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "account_dialog_extra_data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->setResult(I)V

    goto :goto_3
.end method

.method private alD(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahg:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a0109

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahg:Landroid/view/ViewGroup;

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahg:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahg:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    iput-boolean v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afM:Z

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->amy(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v3}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v3, "adaptiveSplitScreen: return 2"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v0, v3, :cond_8

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v1, "adaptiveSplitScreen: return 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    invoke-virtual {v0}, Lcom/miui/applicationlock/n;->dismiss()V

    :cond_7
    return-void

    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v0, v3, :cond_d

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afQ:Z

    iput-boolean v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afP:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0900ce

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alG(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alU()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/widget/h;->setVisibility(I)V

    const-string/jumbo v0, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alO()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0900b9

    const v3, 0x7f0900b9

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alI(III)V

    :cond_9
    :goto_2
    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    if-ne v0, v5, :cond_6

    const-string/jumbo v0, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->alE(I)V

    const v0, 0x7f070800

    const v1, 0x7f0900de

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alJ(II)V

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "numeric"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahP(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahL(Z)V

    goto :goto_2

    :cond_b
    const-string/jumbo v0, "mixed"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0900cc

    invoke-direct {p0, v2, v1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alH(III)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alE(I)V

    goto/16 :goto_1

    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v0, v3, :cond_17

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afQ:Z

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    iput-boolean v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afP:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v5, :cond_e

    const-string/jumbo v0, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alU()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/widget/h;->setVisibility(I)V

    const-string/jumbo v0, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v0, 0x7f0900b9

    const v3, 0x7f0900b8

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alI(III)V

    :cond_f
    :goto_3
    const-string/jumbo v0, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alE(I)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v0, "numeric"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahP(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahL(Z)V

    goto :goto_3

    :cond_11
    const-string/jumbo v0, "mixed"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v0, 0x7f0900cc

    invoke-direct {p0, v2, v1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alH(III)V

    goto :goto_3

    :cond_12
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0900cf

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alG(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alU()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->setVisibility(I)V

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v3, 0x7f07080f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v0, "numeric"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "mixed"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_14
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    if-eq v0, v5, :cond_15

    return-void

    :cond_15
    const v0, 0x7f07080f

    const v3, 0x7f0900dd

    invoke-direct {p0, v0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->alJ(II)V

    goto/16 :goto_3

    :cond_16
    move v0, v2

    goto/16 :goto_4

    :cond_17
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v0, v3, :cond_6

    iput-boolean v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afQ:Z

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afP:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0900d0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alG(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v2, 0x7f07080f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    :goto_5
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alU()V

    goto/16 :goto_1

    :cond_19
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    if-ne v0, v5, :cond_18

    const v0, 0x7f07080f

    const v2, 0x7f0900dd

    invoke-direct {p0, v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->alJ(II)V

    goto :goto_5
.end method

.method private alE(I)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    const v1, 0x7f0707fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alF(ZIIII)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private alF(ZIIII)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v1, p2}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agw:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agw:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private alG(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private alH(III)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v0, p1}, Lmiui/view/MiuiKeyBoardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p3, :cond_0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private alI(III)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->aiH(II)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private alJ(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private alK(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070859

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/ae;

    invoke-direct {v3, p0, p3}, Lcom/miui/applicationlock/ae;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;I)V

    invoke-virtual {v0, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/applicationlock/af;

    invoke-direct {v2, p0, p3}, Lcom/miui/applicationlock/af;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;I)V

    invoke-virtual {v0, p2, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/applicationlock/ag;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/ag;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agf:Lmiui/app/AlertDialog;

    const v0, 0x7f0a0177

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/miui/applicationlock/ah;

    invoke-direct {v1, p0, v0}, Lcom/miui/applicationlock/ah;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afX:Z

    return-void
.end method

.method private alL()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/miui/applicationlock/n;

    const v2, 0x7f0b0073

    invoke-direct {v1, p0, p0, v2}, Lcom/miui/applicationlock/n;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amd()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahb:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030033

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const v0, 0x7f0a0102

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0105

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agm:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/ai;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/ai;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amd()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agV:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    invoke-virtual {v0}, Lcom/miui/applicationlock/n;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/n;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahb:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030031

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private alM()V
    .locals 5

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget-object v2, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahy:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->amB(Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/applicationlock/utils/m;->age(JLandroid/content/Context;)V

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->amq(Z)V

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afQ:Z

    if-eqz v2, :cond_2

    :cond_4
    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alO()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v1, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v3, 0x7f0707cc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amw()V

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    const v3, 0x7f0707ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v1, v0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alO()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alO()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    goto :goto_0
.end method

.method private alN(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07085c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070859

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/al;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/al;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/am;

    invoke-direct {v2, p0, p2}, Lcom/miui/applicationlock/am;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/an;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/an;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private alP()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "access_control_lock_enabled"

    return-object v0
.end method

.method private alQ()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ResetChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "forgot_password_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private alR()J
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "applock_countDownTimer_deadline"

    invoke-static {v2, v3, v6, v7}, Lcom/miui/a/e/b;->bue(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    return-wide v6

    :cond_1
    return-wide v2
.end method

.method private alS(J)V
    .locals 7

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahx:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amB(Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    const/high16 v1, 0x64000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Lcom/miui/applicationlock/Z;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/Z;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method

.method private alT()V
    .locals 6

    const v5, 0x7f070860

    const/4 v4, 0x0

    const-string/jumbo v0, "com.android.settings"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amt()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afx(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "forgot_password_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07085f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07085d

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->alN(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aht:I

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07085e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alN(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aht:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PRIVATE_SPACE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070861

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alN(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private alU()V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private alV()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iput v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "numeric"

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->ago(Landroid/content/Context;)I

    move-result v0

    if-ne v3, v0, :cond_1

    iput v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v3, 0x7f0707cc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amw()V

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    const v2, 0x7f0707ce

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "numeric"

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private alW()V
    .locals 2

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeB()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private alX(Z)V
    .locals 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-nez v0, :cond_1

    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alF(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "pattern"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    move v6, v3

    :goto_2
    move-object v1, p0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v1 .. v6}, Lcom/miui/applicationlock/ConfirmAccessControl;->alF(ZIIII)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afP:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "pattern"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private alY()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahN()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    return-void
.end method

.method private alZ()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v4, 0x7f080030

    const v0, 0x7f0a015e

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agJ:Landroid/widget/ImageView;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-static {p0}, Lcom/miui/applicationlock/utils/a;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agN:Landroid/app/KeyguardManager;

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aga:Landroid/view/accessibility/AccessibilityManager;

    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pattern"

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->aie(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->aic()Lcom/miui/applicationlock/widget/h;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v5}, Lcom/miui/applicationlock/widget/h;->ahd(Z)V

    :cond_1
    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    :goto_0
    const-string/jumbo v0, "mixed"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agd:Lcom/miui/applicationlock/utils/n;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahb(Lcom/miui/applicationlock/utils/n;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aht:I

    invoke-static {}, Lcom/miui/a/b/a/d;->getInstance()Lcom/miui/a/b/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agI:Lcom/miui/a/b/a/d;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/applicationlock/S;

    invoke-direct {v0, p0, v2}, Lcom/miui/applicationlock/S;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agn:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agn:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afW:Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agJ:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const-string/jumbo v0, "mixed"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_5
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alW()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amb()V

    invoke-direct {p0, v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alX(Z)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alY()V

    goto/16 :goto_0
.end method

.method private amA()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agM:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahs:J

    return-void
.end method

.method private amB(Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/applicationlock/ConfirmAccessControl;->aok()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/widget/h;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agT()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    invoke-virtual {v0, v3}, Lcom/miui/common/customview/gif/GifImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agH:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agH:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agA:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agA:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/widget/h;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agT()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v1, 0x7f0707e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agR()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/widget/h;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amv()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    invoke-virtual {v0, v5}, Lcom/miui/common/customview/gif/GifImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic amC(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afJ:Z

    return v0
.end method

.method static synthetic amD(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afK:Z

    return v0
.end method

.method static synthetic amE(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afL:Z

    return v0
.end method

.method static synthetic amF(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afM:Z

    return v0
.end method

.method static synthetic amG(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afN:Z

    return v0
.end method

.method static synthetic amH(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afO:Z

    return v0
.end method

.method static synthetic amI(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afR:Z

    return v0
.end method

.method static synthetic amJ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    return v0
.end method

.method static synthetic amK(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afZ:Z

    return v0
.end method

.method static synthetic amL(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aga:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    return-object v0
.end method

.method static synthetic amN(Lcom/miui/applicationlock/ConfirmAccessControl;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agf:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic amO(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    return v0
.end method

.method static synthetic amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agi:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic amQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agm:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic amR(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method static synthetic amS(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agp:I

    return v0
.end method

.method static synthetic amT(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    return-object v0
.end method

.method static synthetic amU(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic amV(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ags:I

    return v0
.end method

.method static synthetic amW(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic amX(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agw:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic amY(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic amZ(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    return-object v0
.end method

.method private ama()V
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->aft(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afu(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "androidPackageName"

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->agt(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v4, Lcom/miui/applicationlock/ac;

    invoke-direct {v4, p0}, Lcom/miui/applicationlock/ac;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private amb()V
    .locals 1

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a016f

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agw:Landroid/widget/ImageView;

    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agx:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method private amc()V
    .locals 8

    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ame()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/a/a;->ajd()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agJ:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/gif/GifImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    const v0, 0x7f0a0169

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v2}, Lcom/miui/applicationlock/a/a;->aje()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/c/d;->bzh(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agb:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agQ:Lcom/miui/c/c;

    if-eqz v0, :cond_2

    const v0, 0x7f0a015f

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/WrapMaml;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agQ:Lcom/miui/c/c;

    invoke-virtual {v1}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/WrapMaml;->aiW(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    const-string/jumbo v2, "com.miui.securitycenter_skinview"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, 0xd3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahn:Lcom/miui/c/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a016a

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahm:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahm:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahn:Lcom/miui/c/c;

    invoke-virtual {v1}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amn(Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/net/Uri;)V

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahl:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahl:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/applicationlock/utils/m;->agx(Ljava/lang/String;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    const-string/jumbo v2, "com.miui.securitycenter_skinview"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, 0xd4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahm:Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agl:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahn:Lcom/miui/c/c;

    invoke-virtual {v0}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agk:Landroid/net/Uri;

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agF:Lcom/miui/c/c;

    if-eqz v0, :cond_4

    const v0, 0x7f0a0160

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string/jumbo v0, "pattern"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0a010b

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agD:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agD:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agD:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agE:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agE:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShutterBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agE:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agF:Lcom/miui/c/c;

    invoke-virtual {v1}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amn(Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/applicationlock/utils/m;->agx(Ljava/lang/String;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    const-string/jumbo v2, "com.miui.securitycenter_skinview"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, 0xd5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agE:Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agl:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agF:Lcom/miui/c/c;

    invoke-virtual {v0}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agk:Landroid/net/Uri;

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahn:Lcom/miui/c/c;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string/jumbo v0, "mixed"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agJ:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1, v2}, Lcom/miui/applicationlock/a/b;->ajm(Landroid/content/Context;Lcom/miui/applicationlock/a/a;Lcom/miui/common/customview/gif/GifImageView;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v0, p0, v1}, Lcom/miui/applicationlock/widget/h;->ahf(Landroid/content/Context;Lcom/miui/applicationlock/a/a;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    const-wide/16 v2, 0xd1

    invoke-virtual {v0, v2, v3}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/c/c;->byY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afN:Z

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    const-string/jumbo v2, "com.miui.securitycenter_skinview"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    invoke-static {}, Lcom/miui/applicationlock/b/a;->ajG()V

    :cond_8
    return-void

    :cond_9
    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agC:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agC:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agC:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private amd()Z
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahb:I

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahb:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahb:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ame()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v1}, Lcom/miui/applicationlock/a/a;->ajg()Lcom/miui/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v1}, Lcom/miui/applicationlock/a/a;->getResources()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/a/a;->aji()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private amf()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isInMultiWindowMode"

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v4, v3}, Lcom/miui/a/c/a;->btA(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConfirmAccessControl"

    const-string/jumbo v3, "isRealInMultiWindow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private amg()Z
    .locals 1

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agu:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private amh()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agQ:Lcom/miui/c/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahn:Lcom/miui/c/c;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ame()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agF:Lcom/miui/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private amj(Landroid/widget/ImageView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afJ:Z

    const v0, 0x7f02030e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afJ:Z

    const v0, 0x7f02030d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private amk()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alC(Z)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aeC(Z)V

    :cond_0
    return-void
.end method

.method private aml(Landroid/content/Intent;)V
    .locals 5

    const/high16 v4, 0x80000

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agg:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz p1, :cond_3

    const-string/jumbo v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agH:Ljava/lang/CharSequence;

    const-string/jumbo v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agA:Ljava/lang/CharSequence;

    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    const-string/jumbo v0, "originating_uid"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    const-string/jumbo v0, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agg:Landroid/os/IBinder;

    const-string/jumbo v0, "miui.intent.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ami()V

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agN:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    const-string/jumbo v2, "StartActivityWhenLocked"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v0, :cond_5

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    :goto_1
    sget-object v0, Lcom/miui/applicationlock/utils/m;->aby:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agK:Landroid/content/Intent;

    const-string/jumbo v1, "showOnLockScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alC(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/applicationlock/Y;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/Y;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajE(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConfirmAccessControl"

    const-string/jumbo v3, "Fail to read StartActivityWhenLocked from intent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfirmAccessControl"

    const-string/jumbo v2, "Activity fails to show on LockScreen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private amm()V
    .locals 3

    new-instance v0, Lcom/miui/applicationlock/ad;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ad;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/ad;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private amn(Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/miui/applicationlock/aj;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/applicationlock/aj;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/net/Uri;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/aj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private amo(ZLandroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v0, 0x7163

    invoke-virtual {p0, p2, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private amp()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alM()V

    :cond_0
    return-void
.end method

.method private amq(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agM:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agN:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Return reason: isRegisterFingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wrongFingerAttempts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unlockMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " attemptDeadLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agf:Lmiui/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agf:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agM:Z

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agq:Lcom/miui/applicationlock/utils/a;

    new-instance v3, Lcom/miui/applicationlock/k;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/applicationlock/k;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/k;)V

    if-eqz p1, :cond_5

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/miui/applicationlock/utils/a;->adJ(Lcom/miui/applicationlock/utils/i;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afU:Z

    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerFingerprint authenticateAppLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_6
    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v1, 0x7f0707cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amw()V

    goto :goto_1
.end method

.method private amr(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/applicationlock/ak;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/ak;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private amt()V
    .locals 6

    new-instance v0, Lcom/miui/applicationlock/U;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/U;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07081d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07081e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070859

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/V;

    invoke-direct {v3, p0, v0}, Lcom/miui/applicationlock/V;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/CountDownTimer;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07081f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/W;

    invoke-direct {v3, p0}, Lcom/miui/applicationlock/W;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/X;

    invoke-direct {v2, p0, v0}, Lcom/miui/applicationlock/X;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/CountDownTimer;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agi:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agi:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private amu(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "pkg_icon_xspace://"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, p1, v1}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private amv()V
    .locals 2

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amx()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/T;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/T;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private amw()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private amx()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/ab;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/ab;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private amy(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agE:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agE:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahm:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahm:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private amz(III)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic anA(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afU:Z

    return p1
.end method

.method static synthetic anB(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    return p1
.end method

.method static synthetic anC(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afZ:Z

    return p1
.end method

.method static synthetic anD(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p1
.end method

.method static synthetic anE(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agp:I

    return p1
.end method

.method static synthetic anF(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ags:I

    return p1
.end method

.method static synthetic anG(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agu:Z

    return p1
.end method

.method static synthetic anH(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agR:Lcom/google/android/exoplayer2/source/MediaSource;

    return-object p1
.end method

.method static synthetic anI(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    return p1
.end method

.method static synthetic anJ(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mTitleTextColor:I

    return p1
.end method

.method static synthetic anK(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aho:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object p1
.end method

.method static synthetic anL(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahp:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object p1
.end method

.method static synthetic anM(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    return p1
.end method

.method static synthetic anN(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alQ()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic anO(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ame()Z

    move-result v0

    return v0
.end method

.method static synthetic anP(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amf()Z

    move-result v0

    return v0
.end method

.method static synthetic anQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    return v0
.end method

.method static synthetic anR(Lcom/miui/applicationlock/ConfirmAccessControl;)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic anS(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alC(Z)V

    return-void
.end method

.method static synthetic anT(Lcom/miui/applicationlock/ConfirmAccessControl;ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alF(ZIIII)V

    return-void
.end method

.method static synthetic anU(Lcom/miui/applicationlock/ConfirmAccessControl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/ConfirmAccessControl;->alK(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic anV(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alM()V

    return-void
.end method

.method static synthetic anW(Lcom/miui/applicationlock/ConfirmAccessControl;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->alS(J)V

    return-void
.end method

.method static synthetic anX(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alT()V

    return-void
.end method

.method static synthetic anY(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alX(Z)V

    return-void
.end method

.method static synthetic anZ(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ama()V

    return-void
.end method

.method static synthetic ana(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agz:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic anb(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic and(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    return v0
.end method

.method static synthetic ane(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agM:Z

    return v0
.end method

.method static synthetic anf(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agN:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic ang(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agR:Lcom/google/android/exoplayer2/source/MediaSource;

    return-object v0
.end method

.method static synthetic anh(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agS:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic ani(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    return v0
.end method

.method static synthetic anj(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    return-object v0
.end method

.method static synthetic ank(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic anl(Lcom/miui/applicationlock/ConfirmAccessControl;)Lmiui/security/SecurityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic anm(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/common/customview/gif/GifImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    return-object v0
.end method

.method static synthetic ann(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/a/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    return-object v0
.end method

.method static synthetic ano(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    return-object v0
.end method

.method static synthetic anp(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahh:Z

    return v0
.end method

.method static synthetic anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mTitleTextColor:I

    return v0
.end method

.method static synthetic anr(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ans(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aho:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method static synthetic ant(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahp:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method static synthetic anu(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aht:I

    return v0
.end method

.method static synthetic anv(Lcom/miui/applicationlock/ConfirmAccessControl;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahu:J

    return-wide v0
.end method

.method static synthetic anw(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afK:Z

    return p1
.end method

.method static synthetic anx(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afL:Z

    return p1
.end method

.method static synthetic any(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afM:Z

    return p1
.end method

.method static synthetic anz(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afO:Z

    return p1
.end method

.method static synthetic aoa(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amc()V

    return-void
.end method

.method static synthetic aob(Lcom/miui/applicationlock/ConfirmAccessControl;ZLandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->amo(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic aoc(Lcom/miui/applicationlock/ConfirmAccessControl;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->amr(J)V

    return-void
.end method

.method static synthetic aod(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amq(Z)V

    return-void
.end method

.method static synthetic aoe(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amv()V

    return-void
.end method

.method static synthetic aof(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amw()V

    return-void
.end method

.method static synthetic aog(Lcom/miui/applicationlock/ConfirmAccessControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amy(I)V

    return-void
.end method

.method static synthetic aoh(Lcom/miui/applicationlock/ConfirmAccessControl;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    return-void
.end method

.method static synthetic aoi(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    return-void
.end method

.method static synthetic aoj(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amB(Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V

    return-void
.end method

.method private static synthetic aok()[I
    .locals 3

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahv:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahv:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->values()[Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahx:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahy:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahz:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahv:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected alO()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afQ:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07080f

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0707f8

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amw()V

    const v0, 0x7f0707cc

    return v0
.end method

.method protected ami()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v0, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/miui/applicationlock/a/a;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    const-wide/16 v4, 0xd3

    invoke-virtual {v0, v4, v5}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agQ:Lcom/miui/c/c;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    const-wide/16 v4, 0xd4

    invoke-virtual {v0, v4, v5}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahn:Lcom/miui/c/c;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    const-wide/16 v4, 0xd5

    invoke-virtual {v0, v4, v5}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agF:Lcom/miui/c/c;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0165

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahj:Landroid/widget/TextView;

    :cond_1
    new-instance v0, Lcom/miui/applicationlock/l;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/l;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/BitmapDrawable;

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Lcom/miui/applicationlock/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amh()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahj:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahj:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->amu(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConfirmAccessControl"

    const-string/jumbo v3, "Fail to get applicationInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/q;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->amu(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public ams()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahu:J

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afT:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afT:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/b/a;->ajH(JJ)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amp()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agw(Lmiui/security/SecurityManager;)V

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v2}, Lcom/miui/applicationlock/utils/m;->afF(Landroid/content/Context;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alW()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alV()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    const v2, 0x7f0200fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "account_dialog_extra_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amp()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7148 -> :sswitch_1
        0x7163 -> :sswitch_0
        0x46dd6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 5

    const/16 v0, 0x3e7

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/utils/e;->aet(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-virtual {v1, v2, v0}, Lmiui/security/SecurityManager;->finishAccessControl(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agg:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agI:Lcom/miui/a/b/a/d;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agg:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/b/a/d;->btr(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agw:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    invoke-virtual {v0}, Lcom/miui/applicationlock/n;->dismiss()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agw:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    const v1, 0x7f0707fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/miui/common/b/f;->aHP()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-super {p0}, Lcom/miui/common/a/d;->onBackPressed()V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v2, 0xd1

    const/4 v7, 0x4

    const/16 v4, 0x8

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v4

    const-string/jumbo v5, "applicationlock"

    const-string/jumbo v6, "com.miui.securitycenter_skinadinfo"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/c/f;->bzp(Landroid/content/Context;JLcom/miui/c/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/applicationlock/b/a;->ajF()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afT:Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agZ:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    const v1, 0x7f0707fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-eqz v0, :cond_0

    move v5, v4

    :goto_1
    move-object v0, p0

    move v2, v7

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alF(ZIIII)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amf()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agv:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alL()V

    invoke-direct {p0, v6}, Lcom/miui/applicationlock/ConfirmAccessControl;->amq(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amq(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agy:Landroid/widget/TextView;

    const v1, 0x7f0707fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    move-object v0, p0

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->alF(ZIIII)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahl:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amj(Landroid/widget/ImageView;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agC:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amj(Landroid/widget/ImageView;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agD:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amj(Landroid/widget/ImageView;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a010b -> :sswitch_4
        0x7f0a011b -> :sswitch_2
        0x7f0a0167 -> :sswitch_0
        0x7f0a0169 -> :sswitch_0
        0x7f0a016f -> :sswitch_1
        0x7f0a0173 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alD(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v4, 0x7f0a016b

    const v5, 0x7f0900d1

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, "HappyCoding"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-eqz v0, :cond_5

    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->setContentView(I)V

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Lcom/miui/applicationlock/R;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/R;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07079b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->aha:Landroid/content/res/Resources;

    const v3, 0x7f0201ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agV:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agV:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alZ()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alV()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aml(Landroid/content/Intent;)V

    if-eqz p1, :cond_6

    const-string/jumbo v0, "num_wrong_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    :goto_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amm()V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agN:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afU:Z

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "sc_internal"

    :goto_3
    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajD(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    const-string/jumbo v1, "ConfirmAccessControl"

    const-string/jumbo v2, "parcel exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->setContentView(I)V

    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a016c

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahi:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agt:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahk:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agX:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agV:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agV:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahk:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amk()V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "from_app"

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agn:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agn:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahd:Lcom/miui/common/customview/gif/GifImageView;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/GifImageView;->aEx()V

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afW:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agM:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    :cond_4
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/m;->agp(Landroid/content/Context;I)V

    :cond_5
    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahf:Lcom/miui/applicationlock/n;

    invoke-virtual {v0}, Lcom/miui/applicationlock/n;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ago:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 10

    const-wide/16 v8, 0x96

    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v1}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v1, "onResume: return 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amf()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alD(Landroid/content/res/Configuration;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aey()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v1, "onResume: return 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->alC(Z)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aey()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agW:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->agn(ILmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish checkAccessControlPass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v1, "onResume: return 5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfirmAccessControl"

    const-string/jumbo v2, " onResume error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agc:Lcom/miui/applicationlock/utils/e;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aez(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish CancelUnlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish needFinishAccessControl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->alR()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_9

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->alS(J)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agN:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const-string/jumbo v1, "ConfirmAccessControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume: isKeyguardLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-eqz v1, :cond_c

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v1, "onResume: return 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    iput v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahy:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amB(Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agX()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_b
    iput v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->age:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahy:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amB(Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V

    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afY:Z

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahq:I

    if-nez v0, :cond_8

    invoke-direct {p0, v4, v3, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->amz(III)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agG:Landroid/widget/TextView;

    const v1, 0x7f0707cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amw()V

    goto :goto_1

    :cond_c
    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amg()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afV:Z

    if-eqz v0, :cond_f

    :cond_d
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afU:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/applicationlock/ConfirmAccessControl;->ahs:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-gtz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/applicationlock/ConfirmAccessControl;->ahs:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gtz v0, :cond_10

    :cond_e
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amq(Z)V

    :cond_f
    :goto_2
    return-void

    :cond_10
    invoke-direct {p0, v8, v9}, Lcom/miui/applicationlock/ConfirmAccessControl;->amr(J)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "num_wrong_attempts"

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agT:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onStart()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amv()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agl:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agk:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agl:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agk:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amn(Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/net/Uri;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahh:Z

    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahh:Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agP:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahe:Lcom/miui/applicationlock/a/a;

    invoke-virtual {v2}, Lcom/miui/applicationlock/a/a;->aje()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/c/d;->bzi(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agb:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ams()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afw(ZLandroid/view/Window;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afS:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amA()V

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amr(J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agf:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afX:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->agf:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afX:Z

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afU:Z

    if-nez v0, :cond_2

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "ConfirmAccessControl"

    const-string/jumbo v2, "bind account dialog show failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->afX:Z

    throw v0
.end method
