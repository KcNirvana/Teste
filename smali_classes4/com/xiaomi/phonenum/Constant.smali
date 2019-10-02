.class public Lcom/xiaomi/phonenum/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.xiaomi.simactivate.service.ACTION_BIND_SYSTEM_PHONE_SERVICE"

.field public static final BASE_URL:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final OBTAIN_STRATEGY_URL:Ljava/lang/String;

.field public static final PHONE_SERVICE_PACKAGE:Ljava/lang/String; = "com.xiaomi.simactivate.service"

.field private static USE_PREVIEW:Z = false

.field public static final UTF_8:Ljava/lang/String; = "utf-8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/xiaomi_account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/phonenum/Constant;->USE_PREVIEW:Z

    sget-boolean v0, Lcom/xiaomi/phonenum/Constant;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v0, "http://act.preview.account.xiaomi.com/pass/activator"

    goto :goto_0

    :cond_0
    const-string v0, "https://act.account.xiaomi.com/pass/activator"

    :goto_0
    sput-object v0, Lcom/xiaomi/phonenum/Constant;->BASE_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/phonenum/Constant;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/getCloudControl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/Constant;->OBTAIN_STRATEGY_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUsePreview(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/phonenum/Constant;->USE_PREVIEW:Z

    return-void
.end method
