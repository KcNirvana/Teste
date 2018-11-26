.class public Lcom/miui/gamebooster/a/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final synthetic eG:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fJ(Lcom/miui/gamebooster/model/a;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/a/l;->fO()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/a;->mz()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "com.tencent.mm"

    const-string/jumbo v1, "com.tencent.mm.ui.LauncherUI"

    const v2, 0x7f070985

    invoke-static {p1, v0, v1, v2}, Lcom/miui/gamebooster/a/k;->fI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "QUICKWEIXIN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "com.tencent.mobileqq"

    const-string/jumbo v1, "com.tencent.mobileqq.activity.SplashActivity"

    const v2, 0x7f070984

    invoke-static {p1, v0, v1, v2}, Lcom/miui/gamebooster/a/k;->fI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "QUICKQQ"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/miui/gamebooster/a/l;->fL(Landroid/content/Context;)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "QUICKSCREENSHOT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/miui/gamebooster/a/l;->fM(Landroid/content/Context;)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "RECORD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/miui/gamebooster/a/l;->fK(Landroid/content/Context;)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "ONEKEYCLEAN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    invoke-static {p1, p2}, Lcom/miui/gamebooster/a/l;->fN(Landroid/content/Context;Landroid/view/View;)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "ANTIMSG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static fK(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const v1, 0x7f07093f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v1, v2

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-static {p0, v2}, Lcom/miui/gamebooster/a/F;->ii(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gamebooster/a/M;

    invoke-direct {v2, v1, p0}, Lcom/miui/gamebooster/a/M;-><init>(ILandroid/content/Context;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static fL(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/gamebooster/a/N;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/a/N;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static fM(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.screenrecorder.RECORDER_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "is_start_immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/a;->eP(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f070983

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "startRecord_fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fN(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0a0205

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "GameBoxFunctionUtils"

    const-string/jumbo v1, "swtichAntiMsgMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private static synthetic fO()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/a/l;->eG:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/a/l;->eG:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->values()[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qP:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qQ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qR:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qS:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qT:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/miui/gamebooster/a/l;->eG:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method
