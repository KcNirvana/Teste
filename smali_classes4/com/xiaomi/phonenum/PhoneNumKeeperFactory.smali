.class public Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;
.super Ljava/lang/Object;
.source "PhoneNumKeeperFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSupportService(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.simactivate.service.ACTION_BIND_SYSTEM_PHONE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.simactivate.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public createPhoneNumKeeper(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/phonenum/PhoneNumKeeper;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->getDefaultPhoneUtil(Landroid/content/Context;)Lcom/xiaomi/phonenum/phone/PhoneUtil;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-direct {v1, p1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;-><init>(Lcom/xiaomi/phonenum/phone/PhoneUtil;)V

    new-instance v2, Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-direct {v2, v0, p2, p1}, Lcom/xiaomi/phonenum/PhoneNumStore;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/phone/PhoneUtil;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;->isSupportService(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.xiaomi.permission.CLOUD_MANAGER"

    invoke-static {v0, p1}, Lcom/xiaomi/phonenum/utils/RomUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;

    new-instance p2, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-direct {p2, v0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v2}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;-><init>(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/phonenum/PhoneNumStore;)V

    invoke-virtual {v1, p1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->setPhoneNumGetter(Lcom/xiaomi/phonenum/PhoneNumGetter;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;

    invoke-direct {p1, v2}, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;-><init>(Lcom/xiaomi/phonenum/PhoneNumStore;)V

    invoke-virtual {v1, p1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->setPhoneNumGetter(Lcom/xiaomi/phonenum/PhoneNumGetter;)V

    :goto_0
    return-object v1
.end method
