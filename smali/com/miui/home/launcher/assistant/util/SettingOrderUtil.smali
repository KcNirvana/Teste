.class public Lcom/miui/home/launcher/assistant/util/SettingOrderUtil;
.super Ljava/lang/Object;
.source "SettingOrderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingOrderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNewSettingItem(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;

    invoke-direct {v2}, Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;-><init>()V

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;->setPrefKey(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/util/SettingOrderUtil$SettingItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SettingOrderUtil"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
