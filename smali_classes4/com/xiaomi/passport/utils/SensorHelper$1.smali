.class Lcom/xiaomi/passport/utils/SensorHelper$1;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Lcom/xiaomi/passport/utils/SensorHelper$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/utils/SensorHelper;->collectAndUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/utils/SensorHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/SensorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/SensorHelper$1;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->encrypt(Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v1, "encreptedData"

    iget-object v2, p1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v1, "encreptedKey"

    iget-object p1, p1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->encryptedKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string p1, "https://account.xiaomi.com/pass/auth/security/pensieve/biosignature"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    :try_end_0
    .catch Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$1;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/SensorHelper;->access$000(Lcom/xiaomi/passport/utils/SensorHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$1;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/SensorHelper;->access$000(Lcom/xiaomi/passport/utils/SensorHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$1;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/SensorHelper;->access$000(Lcom/xiaomi/passport/utils/SensorHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/SensorHelper$1;->this$0:Lcom/xiaomi/passport/utils/SensorHelper;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/SensorHelper;->access$000(Lcom/xiaomi/passport/utils/SensorHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
