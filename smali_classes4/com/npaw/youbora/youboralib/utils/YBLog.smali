.class public Lcom/npaw/youbora/youboralib/utils/YBLog;
.super Ljava/lang/Object;
.source "YBLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Youbora"

.field public static final YBLogLevelDebug:I = 0x4

.field public static final YBLogLevelError:I = 0x1

.field public static final YBLogLevelHTTPRequests:I = 0x5

.field public static final YBLogLevelLifeCycle:I = 0x3

.field public static final YBLogLevelSilent:I = 0x0

.field public static final YBLogLevelWarning:I = 0x2

.field private static currentLogLevel:I = 0x2

.field private static externalLogger:Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->reportLogMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static debugLevel()I
    .locals 1

    sget v0, Lcom/npaw/youbora/youboralib/utils/YBLog;->currentLogLevel:I

    return v0
.end method

.method public static error(Ljava/lang/Exception;)V
    .locals 2

    sget v0, Lcom/npaw/youbora/youboralib/utils/YBLog;->currentLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->reportLogMessage(ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->reportLogMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static notice(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->reportLogMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static reportLogMessage(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/npaw/youbora/youboralib/utils/YBLog;->externalLogger:Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/npaw/youbora/youboralib/utils/YBLog;->externalLogger:Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;

    invoke-interface {v0, p1, p0}, Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;->logYouboraMessage(Ljava/lang/String;I)V

    :cond_0
    sget v0, Lcom/npaw/youbora/youboralib/utils/YBLog;->currentLogLevel:I

    if-lt v0, p0, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "Youbora"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p0, "Youbora"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p0, "Youbora"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string p0, "Youbora"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p0, "Youbora"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->reportLogMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static setDebugLevel(I)V
    .locals 0

    sput p0, Lcom/npaw/youbora/youboralib/utils/YBLog;->currentLogLevel:I

    return-void
.end method

.method public static setLogger(Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/npaw/youbora/youboralib/utils/YBLog;->externalLogger:Lcom/npaw/youbora/youboralib/utils/YBLog$YouboraLogger;

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->reportLogMessage(ILjava/lang/String;)V

    return-void
.end method
