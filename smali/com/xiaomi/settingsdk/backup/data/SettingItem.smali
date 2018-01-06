.class public abstract Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field protected static final KEY_VALUE:Ljava/lang/String; = "value"

.field protected static final TAG:Ljava/lang/String; = "SettingsBackup"


# instance fields
.field public key:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createByType(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "string"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "binary"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "json"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "SettingsBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are not handled!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->createByType(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->setValueFromJson(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/settingsdk/backup/data/SettingItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->compareTo(Lcom/xiaomi/settingsdk/backup/data/SettingItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected fillFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract getJsonValue()Ljava/lang/Object;
.end method

.method protected abstract getType()Ljava/lang/String;
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->value:Ljava/lang/Object;

    return-void
.end method

.method protected abstract setValueFromJson(Lorg/json/JSONObject;)V
.end method

.method protected abstract stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "key"

    iget-object v2, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getJsonValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SettingsBackup"

    const-string v3, "JSONException occorred when toJson()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
