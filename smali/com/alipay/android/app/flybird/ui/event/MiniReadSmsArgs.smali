.class public abstract Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;
.super Ljava/lang/Object;
.source "MiniReadSmsArgs.java"


# static fields
.field public static final SMS_READ_TIME:Ljava/lang/String; = "read_time"

.field public static final SMS_RULES:Ljava/lang/String; = "rules"

.field public static final SMS_TEMP:Ljava/lang/String; = "temp"

.field public static final SMS_TMP_GROUP:Ljava/lang/String; = "tmp_group"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public abstract reSendSuccess()V
.end method

.method public abstract readSuccess(Ljava/lang/String;)V
.end method
