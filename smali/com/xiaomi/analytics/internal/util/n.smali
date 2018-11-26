.class public Lcom/xiaomi/analytics/internal/util/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final synthetic bnL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NetworkUtils"

    sput-object v0, Lcom/xiaomi/analytics/internal/util/n;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnF:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnE:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnE:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    :cond_3
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/n;->bLu(I)Lcom/xiaomi/analytics/internal/util/NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/analytics/internal/util/n;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getNetState"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnF:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0
.end method

.method private static bLu(I)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnF:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnG:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnI:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnJ:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/n;->b(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/util/NetState;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/n;->e()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/16 v0, 0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/analytics/internal/util/n;->bnL:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/internal/util/n;->bnL:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/NetState;->values()[Lcom/xiaomi/analytics/internal/util/NetState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnG:Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnI:Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnJ:Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnF:Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnE:Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/xiaomi/analytics/internal/util/n;->bnL:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method
