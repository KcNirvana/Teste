.class Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/cmd/WbAppActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencyHelper"
.end annotation


# static fields
.field private static final DEFAULT_FREQUENCY:I = 0x36ee80

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "frequency_get_cmd"

.field private static final KEY_LAST_TIME_GET_CMD:Ljava/lang/String; = "last_time_get_cmd"

.field private static final WEIBO_SDK_PREFERENCES_NAME:Ljava/lang/String; = "com_sina_weibo_sdk"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;)J
    .locals 3

    const-wide/32 v0, 0x36ee80

    if-eqz p1, :cond_0

    const-string/jumbo v2, "frequency_get_cmd"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "last_time_get_cmd"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getWeiboSdkSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string/jumbo v1, "com_sina_weibo_sdk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static saveFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "frequency_get_cmd"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static saveLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_time_get_cmd"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
