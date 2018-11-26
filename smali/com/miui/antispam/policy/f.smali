.class public Lcom/miui/antispam/policy/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/PolicyUtils/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antispam/policy/f;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    return-void
.end method

.method private Xo(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move p3, v0

    :goto_1
    :pswitch_1
    return p3

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/policy/f;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->Wx()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/policy/f;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/policy/PolicyUtils/b;->WP(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    move p3, v0

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lmiui/provider/ExtraTelephony;->isInVipList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public Xn(ILcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/g;
    .locals 8

    const/16 v7, 0x17

    const/4 v6, 0x0

    const/4 v0, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-object v6

    :cond_1
    iget v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    if-ne v2, v1, :cond_7

    if-nez p1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    new-instance v0, Lcom/miui/antispam/policy/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/miui/antispam/db/a;->ZG()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/antispam/policy/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_6

    invoke-static {}, Lcom/miui/antispam/db/a;->ZD()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/antispam/util/h;->XL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "bright"

    const v2, 0x10000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    :goto_1
    return-object v6

    :cond_6
    invoke-static {}, Lcom/miui/antispam/db/a;->ZF()I

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/miui/antispam/policy/f;->Xo(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/miui/antispam/policy/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v0

    :pswitch_1
    if-nez v2, :cond_4

    new-instance v0, Lcom/miui/antispam/policy/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/antispam/util/h;->Yh(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/miui/antispam/policy/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v0

    :cond_7
    iget v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    if-ne v2, v0, :cond_5

    if-eqz p1, :cond_8

    if-ne p1, v5, :cond_5

    :cond_8
    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/antispam/util/h;->XL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_c

    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v4, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/miui/antispam/policy/f;->Xo(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v6

    :cond_9
    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Yw:Z

    if-eqz v2, :cond_a

    return-object v6

    :cond_a
    if-ne p1, v5, :cond_b

    :goto_2
    new-instance v2, Lcom/miui/antispam/policy/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v2

    :cond_b
    move v0, v1

    goto :goto_2

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_d

    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Yw:Z

    if-eqz v2, :cond_d

    return-object v6

    :cond_d
    invoke-static {}, Lcom/miui/antispam/db/a;->ZB()Z

    move-result v2

    if-nez v2, :cond_f

    if-ne p1, v5, :cond_e

    :goto_3
    new-instance v2, Lcom/miui/antispam/policy/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v2

    :cond_e
    move v0, v1

    goto :goto_3

    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_10

    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Yw:Z

    if-eqz v2, :cond_10

    return-object v6

    :cond_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_11

    invoke-static {}, Lcom/miui/antispam/db/a;->ZD()I

    move-result v2

    :goto_4
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    if-nez v3, :cond_5

    if-ne p1, v5, :cond_13

    :goto_5
    new-instance v2, Lcom/miui/antispam/policy/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v2

    :cond_11
    invoke-static {}, Lcom/miui/antispam/db/a;->ZE()I

    move-result v2

    goto :goto_4

    :pswitch_4
    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v4, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/miui/antispam/policy/f;->Xo(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    if-ne p1, v5, :cond_12

    :goto_6
    new-instance v2, Lcom/miui/antispam/policy/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v2

    :cond_12
    move v0, v1

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_5

    :pswitch_5
    iget-object v2, p0, Lcom/miui/antispam/policy/f;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/antispam/util/h;->Yh(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-ne p1, v5, :cond_14

    :goto_7
    new-instance v2, Lcom/miui/antispam/policy/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/antispam/policy/g;-><init>(Lcom/miui/antispam/policy/f;ZI)V

    return-object v2

    :cond_14
    move v0, v1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
