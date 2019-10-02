.class public Lcom/xiaomi/phonenum/phone/PhoneInfoManager;
.super Ljava/lang/Object;
.source "PhoneInfoManager.java"


# static fields
.field private static phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultPhoneUtil(Landroid/content/Context;)Lcom/xiaomi/phonenum/phone/PhoneUtil;
    .locals 3

    const-class v0, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    new-instance v1, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    sget-object p0, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    new-instance v1, Lcom/xiaomi/phonenum/phone/OPhoneInfo;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/phone/OPhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    new-instance v1, Lcom/xiaomi/phonenum/phone/NPhoneInfo;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/phone/NPhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    new-instance v1, Lcom/xiaomi/phonenum/phone/MPhoneInfo;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    goto :goto_0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_5

    new-instance v1, Lcom/xiaomi/phonenum/phone/LSPhoneInfo;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/phone/LSPhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    goto :goto_0

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    new-instance v1, Lcom/xiaomi/phonenum/phone/LPhoneInfo;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/phone/LPhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    :cond_6
    :goto_0
    sget-object p0, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setPhoneUtil(Lcom/xiaomi/phonenum/phone/PhoneUtil;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    return-void
.end method
