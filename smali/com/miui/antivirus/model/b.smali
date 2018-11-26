.class public Lcom/miui/antivirus/model/b;
.super Lcom/miui/antivirus/model/g;
.source ""


# static fields
.field private static final synthetic akY:[I


# instance fields
.field protected akQ:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field protected akR:Lcom/miui/antivirus/model/AppModel$CardType;

.field private akS:Z

.field private akT:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

.field protected akU:Lcom/miui/antivirus/model/AppModel$SafeGroup;

.field private akV:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

.field private akW:Z

.field private akX:I

.field private mAppLabel:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mSourceDir:Ljava/lang/String;

.field private mVirusDesc:Ljava/lang/String;

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/g;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/model/b;->akS:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/antivirus/model/AppModel$CardType;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/g;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/model/b;->akS:Z

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->akR:Lcom/miui/antivirus/model/AppModel$CardType;

    return-void
.end method

.method private static synthetic aqX()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/model/b;->akY:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/model/b;->akY:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/AppModel$CardType;->values()[Lcom/miui/antivirus/model/AppModel$CardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alb:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alc:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ale:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alf:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alg:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/antivirus/model/b;->akY:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->akQ:Lcom/miui/antivirus/model/AppModel$AppGroup;

    return-void
.end method

.method public aqB(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/b;->akX:I

    return-void
.end method

.method public aqC(Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->akV:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    return-void
.end method

.method public aqD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->mVirusDesc:Ljava/lang/String;

    return-void
.end method

.method public aqE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->mVirusName:Ljava/lang/String;

    return-void
.end method

.method public aqF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->mSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public aqG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public aqH()Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->akV:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    return-object v0
.end method

.method public aqI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->mVirusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public aqJ()Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->akT:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    return-object v0
.end method

.method public aqK(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/b;->akW:Z

    return-void
.end method

.method public aqL()Lcom/miui/antivirus/model/AppModel$AppGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->akQ:Lcom/miui/antivirus/model/AppModel$AppGroup;

    return-object v0
.end method

.method public aqM()Lcom/miui/antivirus/model/AppModel$CardType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->akR:Lcom/miui/antivirus/model/AppModel$CardType;

    return-object v0
.end method

.method public aqN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->alN:Ljava/lang/String;

    return-object v0
.end method

.method public aqO()Lcom/miui/antivirus/model/AppModel$SafeGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->akU:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    return-object v0
.end method

.method public aqP()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/b;->akX:I

    return v0
.end method

.method public aqQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/b;->alO:Z

    return v0
.end method

.method public aqR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/b;->akS:Z

    return v0
.end method

.method public aqS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/b;->akW:Z

    return v0
.end method

.method public aqT(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->alN:Ljava/lang/String;

    return-void
.end method

.method public aqU(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/b;->alO:Z

    return-void
.end method

.method public aqV(Lcom/miui/antivirus/model/AppModel$SafeGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->akU:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    return-void
.end method

.method public aqW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/b;->akS:Z

    return-void
.end method

.method public aqx(Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->akT:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    return-void
.end method

.method public aqy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->mSourceDir:Ljava/lang/String;

    return-void
.end method

.method public aqz(Lcom/miui/antivirus/model/AppModel$CardType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->akR:Lcom/miui/antivirus/model/AppModel$CardType;

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/model/b;->aqX()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/model/b;->akR:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :pswitch_0
    const v0, 0x7f030154

    return v0

    :pswitch_1
    const v0, 0x7f030153

    return v0

    :pswitch_2
    const v0, 0x7f030152

    return v0

    :pswitch_3
    const v0, 0x7f030155

    return v0

    :pswitch_4
    const v0, 0x7f03015b

    return v0

    :pswitch_5
    const v0, 0x7f03015a

    return v0

    :pswitch_6
    iget-object v0, p0, Lcom/miui/antivirus/model/b;->akU:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    sget-object v1, Lcom/miui/antivirus/model/AppModel$SafeGroup;->alq:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    if-ne v0, v1, :cond_0

    const v0, 0x7f030157

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->alM:Ljava/lang/String;

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->mAppLabel:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/b;->alM:Ljava/lang/String;

    return-void
.end method
