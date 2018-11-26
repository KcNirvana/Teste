.class public Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# static fields
.field public static RE:Ljava/lang/String;

.field public static RF:Ljava/lang/String;

.field public static RG:Ljava/lang/String;

.field public static RH:Ljava/lang/String;

.field public static RI:Ljava/lang/String;

.field public static RJ:Ljava/lang/String;

.field public static SIM_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "mode"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RG:Ljava/lang/String;

    const-string/jumbo v0, "number"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RI:Ljava/lang/String;

    const-string/jumbo v0, "state"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RJ:Ljava/lang/String;

    const-string/jumbo v0, "address_code"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RE:Ljava/lang/String;

    const-string/jumbo v0, "sim_id"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    const-string/jumbo v0, "is_add_complete"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RF:Ljava/lang/String;

    const-string/jumbo v0, "needConfirm"

    sput-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    return-void
.end method

.method private SZ(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v6, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_3

    sget v0, Lcom/miui/antispam/b;->aaG:I

    if-eq p3, v0, :cond_1

    sget v0, Lcom/miui/antispam/b;->aaH:I

    if-ne p3, v0, :cond_2

    :cond_1
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SZ(Ljava/lang/String;IIII)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SZ(Ljava/lang/String;IIII)V

    :goto_0
    return-void

    :cond_3
    if-ne p2, v4, :cond_6

    move-object v0, p1

    :goto_1
    if-ne v6, p3, :cond_7

    :goto_2
    invoke-static {p0, v0, p4, p3, p5}, Lcom/miui/antispam/util/h;->XE(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sim_id"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eq p2, v4, :cond_4

    const-string/jumbo v2, "notes"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_5
    invoke-static {p0, v0, p4, v5, p5}, Lcom/miui/antispam/util/h;->XF(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v5, v6

    goto :goto_2
.end method

.method private Ta(I[Ljava/lang/String;[III)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, p5, 0x1

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p5, 0x1

    invoke-static {p0, v0, v9}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    :cond_2
    new-instance v0, Lcom/miui/antispam/ui/activity/q;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/ui/activity/q;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;[Ljava/lang/String;I[III)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v9, [Ljava/lang/Void;

    move-object v1, v7

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/miui/antispam/ui/activity/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic Tb(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SZ(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic Tc(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;I[Ljava/lang/String;[III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->Ta(I[Ljava/lang/String;[III)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7, v7}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RG:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v1, "numbers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RH:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f07004d

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f07004e

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/antispam/ui/activity/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/ui/activity/o;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;I[Ljava/lang/String;[III)V

    const v1, 0x104000a

    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/antispam/ui/activity/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/ui/activity/a;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;Lcom/miui/antispam/ui/activity/a;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/antispam/ui/activity/p;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/p;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->Ta(I[Ljava/lang/String;[III)V

    goto :goto_0
.end method
