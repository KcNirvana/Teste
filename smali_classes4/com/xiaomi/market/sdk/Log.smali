.class public Lcom/xiaomi/market/sdk/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x0

.field private static final INFO:I = 0x2

.field private static final MAX_CHAR_SIZE_PER_LOG:I = 0xbb8

.field private static final PREFIX:Ljava/lang/String; = "UpdateCheck-"

.field private static final VERBOSE:I = 0x4

.field private static final WARN:I = 0x1

.field public static sEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateCheck-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xbb8

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    if-gt v0, v2, :cond_3

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v4, v0, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/xiaomi/market/sdk/Log;->logSubMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/market/sdk/Log;->logSubMessage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xbb8

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    if-gt v0, v2, :cond_3

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v4, v0, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/xiaomi/market/sdk/Log;->logSubMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/market/sdk/Log;->logSubMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_3
    return-void
.end method

.method private static logSubMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static logSubMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Log;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Log;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/market/sdk/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method
