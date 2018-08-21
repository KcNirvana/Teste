.class public Lcom/xiaomi/settingsdk/backup/data/DataPackage;
.super Ljava/lang/Object;
.source "DataPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/settingsdk/backup/data/DataPackage;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DATA_PACKAGE:Ljava/lang/String; = "data_package"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final mDataItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mFileItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;-><init>()V

    sput-object v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v0

    return-object v0
.end method

.method public static fromWrappedBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-class v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v3, "data_package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v3

    return-object v3
.end method

.method private getDataPackageBundle()Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static getVersionFromBundle(Landroid/os/Bundle;)I
    .locals 1

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 6

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    const-class v4, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    if-eqz v4, :cond_3

    iget-object v5, v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    move-object v4, v3

    check-cast v4, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v4, v3, Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addAbstractDataItem(Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    const/high16 v1, 0x10000000

    invoke-static {p2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendToWrappedBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    return-object v0
.end method

.method public getDataItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getFileItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
