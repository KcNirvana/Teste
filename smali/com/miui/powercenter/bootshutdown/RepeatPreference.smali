.class public Lcom/miui/powercenter/bootshutdown/RepeatPreference;
.super Lmiui/preference/ValuePreference;
.source ""


# instance fields
.field private aGF:Lcom/miui/powercenter/bootshutdown/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setShowRightArrow(Z)V

    return-void
.end method

.method private aTo()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v4

    aget-object v2, v0, v6

    aput-object v2, v1, v5

    aget-object v2, v0, v7

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aget-object v2, v0, v2

    aput-object v2, v1, v6

    const/4 v2, 0x6

    aget-object v2, v0, v2

    aput-object v2, v1, v7

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aget-object v0, v0, v5

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Lcom/miui/powercenter/bootshutdown/b;

    invoke-direct {v0, v4}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/bootshutdown/b;->aSI(Lcom/miui/powercenter/bootshutdown/b;)V

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {v3}, Lcom/miui/powercenter/bootshutdown/b;->aSG()[Z

    move-result-object v3

    new-instance v4, Lcom/miui/powercenter/bootshutdown/m;

    invoke-direct {v4, p0, v0}, Lcom/miui/powercenter/bootshutdown/m;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/b;)V

    invoke-virtual {v2, v1, v3, v4}, Lmiui/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/powercenter/bootshutdown/n;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/bootshutdown/n;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/b;)V

    const v0, 0x104000a

    invoke-virtual {v2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private aTp()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/b;->aSD(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic aTq(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    return-object v0
.end method

.method static synthetic aTr(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTo()V

    return-void
.end method

.method static synthetic aTs(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTp()V

    return-void
.end method


# virtual methods
.method public aTl(Lcom/miui/powercenter/bootshutdown/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/bootshutdown/b;->aSI(Lcom/miui/powercenter/bootshutdown/b;)V

    return-void
.end method

.method public aTm()Lcom/miui/powercenter/bootshutdown/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    return-object v0
.end method

.method public aTn()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aGF:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/b;->aSE()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x4

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f -> :sswitch_3
        0x7f -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onClick()V
    .locals 6

    const/4 v4, 0x2

    const/4 v0, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f07045f

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/j;->bcb(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f07045e

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTn()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v1, :cond_2

    const v1, 0x7f0d002c

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v5, v4, v1

    if-ne v3, v5, :cond_3

    :goto_3
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/miui/powercenter/bootshutdown/l;

    invoke-direct {v3, p0, v4}, Lcom/miui/powercenter/bootshutdown/l;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;[I)V

    invoke-virtual {v2, v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0d002b

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method
