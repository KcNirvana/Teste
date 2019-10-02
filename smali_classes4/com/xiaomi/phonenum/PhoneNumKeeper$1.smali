.class Lcom/xiaomi/phonenum/PhoneNumKeeper$1;
.super Ljava/lang/Object;
.source "PhoneNumKeeper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/phonenum/PhoneNumKeeper;->obtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/phonenum/bean/PhoneNum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/phonenum/PhoneNumKeeper;

.field final synthetic val$phoneLevel:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/PhoneNumKeeper;ILcom/xiaomi/phonenum/obtain/PhoneLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->this$0:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    iput p2, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->val$slotId:I

    iput-object p3, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->val$phoneLevel:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->this$0:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-static {v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->access$000(Lcom/xiaomi/phonenum/PhoneNumKeeper;)Lcom/xiaomi/phonenum/PhoneNumGetter;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->val$slotId:I

    iget-object v2, p0, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->val$phoneLevel:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/PhoneNumGetter;->blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/PhoneNumKeeper$1;->call()Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v0

    return-object v0
.end method
