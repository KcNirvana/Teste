.class Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$1;
.super Ljava/lang/Object;
.source "ActivatorPhoneController.java"

# interfaces
.implements Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$1;->this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupFinished(Lcom/xiaomi/phonenum/bean/Error;)V
    .locals 3

    const-string v0, "ActivatorPhoneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
