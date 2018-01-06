.class public Lcom/xiaomi/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/a/a/j$1;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkUtils"

    sput-object v0, Lcom/xiaomi/a/a/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/a/a/a/j;->b(Landroid/content/Context;)Lcom/xiaomi/a/a/a/i;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/a/a/a/j$1;->a:[I

    invoke-virtual {v0}, Lcom/xiaomi/a/a/a/i;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(I)Lcom/xiaomi/a/a/a/i;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/xiaomi/a/a/a/i;->e:Lcom/xiaomi/a/a/a/i;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/a/a/a/i;->b:Lcom/xiaomi/a/a/a/i;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/a/a/a/i;->c:Lcom/xiaomi/a/a/a/i;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/xiaomi/a/a/a/i;->d:Lcom/xiaomi/a/a/a/i;

    goto :goto_0

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
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Lcom/xiaomi/a/a/a/i;
    .locals 4

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/a/a/a/i;->e:Lcom/xiaomi/a/a/a/i;

    :goto_0
    return-object v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xiaomi/a/a/a/i;->a:Lcom/xiaomi/a/a/a/i;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/xiaomi/a/a/a/i;->a:Lcom/xiaomi/a/a/a/i;

    goto :goto_0

    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/j;->a(I)Lcom/xiaomi/a/a/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/a/a/a/j;->a:Ljava/lang/String;

    const-string v2, "getNetState"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/xiaomi/a/a/a/i;->e:Lcom/xiaomi/a/a/a/i;

    goto :goto_0
.end method
