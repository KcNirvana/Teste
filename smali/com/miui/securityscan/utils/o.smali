.class public Lcom/miui/securityscan/utils/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final synthetic Jh:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JO(Landroid/content/Context;Lcom/miui/securityscan/scanner/OptimizeItem;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-static {}, Lcom/miui/securityscan/utils/o;->JR()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->Ga()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    long-to-int v3, v0

    new-array v4, v4, [Ljava/lang/Object;

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const v0, 0x7f0c002f

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FF()J

    move-result-wide v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lmiui/text/ExtraTextUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const v0, 0x7f07060d

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->Gb()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c0030

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static JP(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->Gc()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f070603

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FJ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    const v0, 0x7f0705ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x50

    if-lt v1, v0, :cond_2

    const v0, 0x7f070600

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x3c

    if-lt v1, v0, :cond_3

    const v0, 0x7f070601

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const v0, 0x7f070602

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static JQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const v0, 0x7f07077c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x4b

    if-lt v0, v1, :cond_1

    const v0, 0x7f07077d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f07077f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic JR()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/utils/o;->Jh:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/utils/o;->Jh:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/OptimizeItem;->values()[Lcom/miui/securityscan/scanner/OptimizeItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/securityscan/utils/o;->Jh:[I

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
