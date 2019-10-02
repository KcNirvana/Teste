.class final Lcom/hungama/apps/ha/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2G"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->a:Ljava/lang/String;

    const-string v0, "3G"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->b:Ljava/lang/String;

    const-string v0, "4G"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->c:Ljava/lang/String;

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->d:Ljava/lang/String;

    const-string v0, "mobile_data"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->e:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->f:Ljava/lang/String;

    const-string v0, "NO_SIM"

    iput-object v0, p0, Lcom/hungama/apps/ha/b/e;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/hungama/apps/ha/b/e;->h:Landroid/content/Context;

    return-void
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/b/e;->h:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/b/e;->h:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "NA"

    return-object v0

    :pswitch_0
    const-string v0, "4G"

    return-object v0

    :pswitch_1
    const-string v0, "3G"

    return-object v0

    :pswitch_2
    const-string v0, "2G"

    return-object v0

    :cond_0
    const-string v0, "NO_SIM"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hungama/apps/ha/b/e;->h:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NA"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mobile_data"

    return-object v0

    :cond_2
    const-string v0, "NA"

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "wifi"

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/hungama/apps/ha/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/e;->h:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NA"

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "NO_SIM"

    return-object v0
.end method
