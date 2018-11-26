.class public Lcom/miui/wakepath/ui/ConfirmStartActivity;
.super Lmiui/app/AlertActivity;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bea:Ljava/lang/String;

.field private beb:Ljava/lang/String;

.field private bec:Landroid/content/Intent;

.field private bed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    return-void
.end method

.method private bBD(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/wakepath/ui/a;

    invoke-direct {v0, p0, p1}, Lcom/miui/wakepath/ui/a;-><init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/wakepath/ui/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bBE(Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-class v0, Lmiui/app/AlertActivity;

    const-string/jumbo v1, "mAlertParams"

    invoke-static {p0, v0, v1}, Lcom/miui/a/c/a;->btE(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mView"

    invoke-static {v0, v1, v2, p1}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mNegativeButtonText"

    const v3, 0x7f07067b

    invoke-virtual {p0, v3}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mPositiveButtonText"

    const v3, 0x7f070678

    invoke-virtual {p0, v3}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic bBF(Lcom/miui/wakepath/ui/ConfirmStartActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bBG(Lcom/miui/wakepath/ui/ConfirmStartActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->beb:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bec:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bed:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bed:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afM()V

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bec:Landroid/content/Intent;

    invoke-static {p0, v1, v0}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afN()V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bBD(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->beb:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bea:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/permcenter/a/a;->Qx(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afN()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bec:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "intent == null"

    invoke-static {v0, v1}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->beb:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bea:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/permcenter/a/a;->QB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v3, "CallerPkgName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->beb:Ljava/lang/String;

    const-string/jumbo v3, "CalleePkgName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bea:Ljava/lang/String;

    const-string/jumbo v3, "UserId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bed:I

    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->beb:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bea:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    :try_start_2
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bec:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    move-object v1, v3

    :goto_1
    move-object v3, v1

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->beb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bea:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->finish()V

    :cond_1
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f030142

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bBE(Landroid/view/View;)V

    const v0, 0x7f0a0038

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v4, 0x7f0201c4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const v0, 0x7f0a0373

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070821

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->setupAlert()V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :cond_5
    move-object v0, v2

    move-object v1, v2

    goto :goto_1
.end method
