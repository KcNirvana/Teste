.class public Lcom/autonavi/its/common/AutoNaviLog;
.super Ljava/lang/Object;
.source "AutoNaviLog.java"


# static fields
.field private static MYLOGFILEName:Ljava/lang/String; = null

.field private static MYLOG_PATH_SDCARD_DIR:Ljava/lang/String; = null

.field private static MYLOG_SWITCH:Ljava/lang/Boolean; = null

.field private static MYLOG_TYPE:C = '\u0000'

.field private static MYLOG_WRITE_TO_FILE:Ljava/lang/Boolean; = null

.field private static final MY_LOG_SDF:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static SDCARD_LOG_FILE_SAVE_DAYS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_SWITCH:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_WRITE_TO_FILE:Ljava/lang/Boolean;

    const/16 v0, 0x76

    sput-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    const-string/jumbo v0, "/sdcard/"

    sput-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

    sput v1, Lcom/autonavi/its/common/AutoNaviLog;->SDCARD_LOG_FILE_SAVE_DAYS:I

    const-string/jumbo v0, "autonavi_sdk_log.txt"

    sput-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOGFILEName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static delFile()V
    .locals 6

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/its/common/AutoNaviLog;->getDateBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/autonavi/its/common/AutoNaviLog;->MYLOGFILEName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private static getDateBefore()Ljava/util/Date;
    .locals 5

    const/4 v4, 0x5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sget v3, Lcom/autonavi/its/common/AutoNaviLog;->SDCARD_LOG_FILE_SAVE_DAYS:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p0, v0, v1}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x69

    invoke-static {p0, p1, v0}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 5

    const/16 v4, 0x77

    const/16 v3, 0x65

    const/16 v2, 0x64

    const/16 v1, 0x76

    sget-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_SWITCH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v3, p2, :cond_2

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-eq v3, v0, :cond_0

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_2

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_WRITE_TO_FILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/autonavi/its/common/AutoNaviLog;->writeLogtoFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-ne v4, p2, :cond_4

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-eq v4, v0, :cond_3

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_4

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v2, p2, :cond_6

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-eq v2, v0, :cond_5

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_6

    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/16 v0, 0x69

    if-ne v0, p2, :cond_8

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-eq v2, v0, :cond_7

    sget-char v0, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_8

    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76

    invoke-static {p0, v0, v1}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x76

    invoke-static {p0, p1, v0}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x77

    invoke-static {p0, v0, v1}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x77

    invoke-static {p0, p1, v0}, Lcom/autonavi/its/common/AutoNaviLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private static writeLogtoFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/autonavi/its/common/AutoNaviLog;->MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/autonavi/its/common/AutoNaviLog;->MYLOGFILEName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method
